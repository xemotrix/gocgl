package gocgl

import (
	"fmt"
	"io/ioutil"
	"os/exec"
	"sync"
	"unsafe"

	"github.com/veandco/go-sdl2/sdl"
)

type MLEngine struct {
	Window      *sdl.Window
	Renderer    *sdl.Renderer
	Texture     *sdl.Texture
	Image       *Image
	WriterImage []byte
	Layers      []*Image
	Headless    bool
}

func NewMLEngine(w, h, n uint32) *MLEngine {
	window, renderer, texture := InitSDL(w, h)
	if n <= 1 {
		panic("number of layers must be greater than 1 for a MLEngine")
	}
	layers := make([]*Image, n)
	for i := range layers {
		layers[i] = NewImage(w, h)
	}
	return &MLEngine{
		Window:      window,
		Renderer:    renderer,
		Texture:     texture,
		Image:       NewImage(w, h),
		WriterImage: make([]byte, w*h*3),
		Layers:      layers,
		Headless:    false,
	}
}
func NewHeadlessMLEngine(w, h, n uint32) *MLEngine {
	if n <= 1 {
		panic("number of layers must be greater than 1 for a MLEngine")
	}
	layers := make([]*Image, n)
	for i := range layers {
		layers[i] = NewImage(w, h)
	}
	return &MLEngine{
		Image:       NewImage(w, h),
		WriterImage: make([]byte, w*h*3),
		Layers:      layers,
		Headless:    true,
	}
}

func (e *MLEngine) renderLayers() {
	e.Image.CopyFrom(e.Layers[0])
	for _, layer := range e.Layers[1:] {
		e.Image.Overlay(layer)
	}
}

func (e *MLEngine) Render() {
	e.renderLayers()
	if e.Headless {
		return
	}
	e.Texture.Update(
		nil,
		unsafe.Pointer(&e.Image.Arr[0]),
		int(e.Image.Width*4),
	)
	e.Renderer.Copy(e.Texture, nil, nil)
	e.Renderer.Present()
}

func (e *MLEngine) Destroy() {
	e.Window.Destroy()
	e.Renderer.Destroy()
	e.Texture.Destroy()
}

func (e *MLEngine) VideoWriter(
	filePath string,
	fps int,
	w, h uint32,
	wg *sync.WaitGroup,
) chan *Image {
	ch := make(chan *Image)
	go e.writeVideo(filePath, fps, ch, w, h, wg)
	return ch
}

func (e *MLEngine) writeVideo(
	filePath string,
	fps int,
	ch chan *Image,
	w, h uint32,
	wg *sync.WaitGroup,
) {
	auxFilePath := filePath[:len(filePath)-4] + "_aux.mp4"
	ffmpeg := exec.Command(
		"ffmpeg",
		"-y",
		"-f", "rawvideo",
		"-pix_fmt", "rgb24",
		"-s", fmt.Sprintf("%dx%d", w, h),
		"-r", fmt.Sprintf("%d", fps),
		"-i", "-",
		"-vcodec", "libx264",
		auxFilePath,
	)
	ffmpegStdin, err := ffmpeg.StdinPipe()
	if err != nil {
		panic(err)
	}
	ffmpegStderr, err := ffmpeg.StderrPipe()
	if err != nil {
		panic(err)
	}

	err = ffmpeg.Start()
	if err != nil {
		panic(err)
	}
	for img := range ch {
		e.LoadBytes(img)
		_, err := ffmpegStdin.Write(e.WriterImage)
		if err != nil {
			eBytes, _ := ioutil.ReadAll(ffmpegStderr)
			fmt.Println(string(eBytes))
			panic(err)
		}
		wg.Done()
	}

	err = ffmpegStdin.Close()
	if err != nil {
		panic(err)
	}
	err = ffmpeg.Wait()
	if err != nil {
		panic(err)
	}

	changeCodec := exec.Command(
		"ffmpeg",
		"-y",
		"-i", auxFilePath,
		"-vf", "format=yuv420p",
		"-c:v", "libx264",
		"-preset", "medium",
		"-profile:v", "baseline",
		"-c:a", "aac",
		filePath,
	)

	codecStderr, err := changeCodec.StderrPipe()
	if err != nil {
		panic(err)
	}
	defer codecStderr.Close()

	err = changeCodec.Run()
	if err != nil {
		eBytes, _ := ioutil.ReadAll(codecStderr)
		fmt.Println(string(eBytes))
		panic(err)
	}

	rmCmd := exec.Command("rm", auxFilePath)
	rmStderr, err := rmCmd.StderrPipe()
	if err != nil {
		panic(err)
	}

	err = rmCmd.Run()
	if err != nil {
		eBytes, _ := ioutil.ReadAll(rmStderr)
		fmt.Println(string(eBytes))
		panic(err)
	}
	wg.Done()
}

func (e *MLEngine) LoadBytes(img *Image) {
	for i := 0; i < len(img.Arr); i += PIXBYTES {
		e.WriterImage[i/PIXBYTES*3] = img.Arr[i+2]
		e.WriterImage[i/PIXBYTES*3+1] = img.Arr[i+1]
		e.WriterImage[i/PIXBYTES*3+2] = img.Arr[i]
	}
}
