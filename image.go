package gocgl

import (
	"fmt"
	"os"
	"time"
	"unsafe"
)

const PIXBYTES = 4

type Image struct {
	Arr    []byte
	Zbuf   []float64
	Width  uint32
	Height uint32
}

func NewImage(width, height uint32) *Image {
	return &Image{
		Arr:    make([]byte, width*height*PIXBYTES),
		Zbuf:   make([]float64, width*height),
		Width:  width,
		Height: height,
	}
}

func (img *Image) index(x, y uint32) uint32 {
	return (y*img.Width + x) * PIXBYTES
}

func (img *Image) SetPixelZ(x, y uint32, z float64, color uint32) {
	if x >= img.Width || x < 0 || y >= img.Height || y < 0 {
		return
	}
	index := y*img.Width + x
	if z < img.Zbuf[index] {
		return
	}
	img.Zbuf[index] = z
	img.SetPixel(x, y, color)
}

func (img *Image) SetPixel(x, y uint32, color uint32) {
	if x >= img.Width || x < 0 || y >= img.Height || y < 0 {
		return
	}
	alphaHex := color >> 24
	if alphaHex == 0x00 {
		return
	}

	index := img.index(x, y)
	if alphaHex == 0xff {
		*(*uint32)(unsafe.Pointer(&img.Arr[index])) = color
		return
	}

	alpha := float64(alphaHex) / 0xff
	r := byte(color >> 16)
	g := byte(color >> 8)
	b := byte(color)

	r = byte((float64(r) * alpha) + (float64(img.Arr[index+2]) * (1 - alpha)))
	g = byte((float64(g) * alpha) + (float64(img.Arr[index+1]) * (1 - alpha)))
	b = byte((float64(b) * alpha) + (float64(img.Arr[index]) * (1 - alpha)))

	img.Arr[index+2] = r
	img.Arr[index+1] = g
	img.Arr[index] = b
}

func (img *Image) FillWithColor(color uint32) {
	for i := 0; i < len(img.Arr); i += PIXBYTES {
		*(*uint32)(unsafe.Pointer(&img.Arr[i])) = color
	}
	img.Zbuf = make([]float64, img.Width*img.Height)
}

func (img *Image) WritePPM(filePath string) error {
	f, _ := os.Create(filePath)
	defer f.Close()

	header := []byte(fmt.Sprintf("P6 %d %d 255 ", img.Width, img.Height))

	_, err := f.Write(header)
	if err != nil {
		return err
	}

	start := time.Now()
	defer func() {
		fmt.Println("WritePPM took", time.Since(start))
	}()

	imgBytes := make([]byte, img.Width*img.Height*3)

	for i := 0; i < len(img.Arr); i += PIXBYTES {
		imgBytes[i/PIXBYTES*3] = img.Arr[i+2]
		imgBytes[i/PIXBYTES*3+1] = img.Arr[i+1]
		imgBytes[i/PIXBYTES*3+2] = img.Arr[i]
	}
	_, err = f.WriteAt(
		imgBytes,
		int64(len(header)),
	)
	return err
}
