package gocgl

import (
	"unsafe"

	"github.com/veandco/go-sdl2/sdl"
)

type Engine struct {
	Window   *sdl.Window
	Renderer *sdl.Renderer
	Texture  *sdl.Texture
	Image    *Image
}

func NewEngine(w, h uint32) *Engine {
	window, renderer, texture := InitSDL(w, h)
	return &Engine{
		Window:   window,
		Renderer: renderer,
		Texture:  texture,
		Image:    NewImage(uint32(w), uint32(h)),
	}
}

func (e *Engine) Render() {
	e.Texture.Update(
		nil,
		unsafe.Pointer(&e.Image.Arr[0]),
		int(e.Image.Width*4),
	)
	e.Renderer.Copy(e.Texture, nil, nil)
	e.Renderer.Present()
}

func (e *Engine) Destroy() {
	e.Window.Destroy()
	e.Renderer.Destroy()
	e.Texture.Destroy()
}

func InitSDL(w, h uint32) (*sdl.Window, *sdl.Renderer, *sdl.Texture) {
	if err := sdl.Init(sdl.INIT_EVERYTHING); err != nil {
		panic(err)
	}

	window, err := sdl.CreateWindow(
		"test",
		sdl.WINDOWPOS_UNDEFINED,
		sdl.WINDOWPOS_UNDEFINED,
		int32(w),
		int32(h),
		sdl.WINDOW_SHOWN|sdl.WINDOW_RESIZABLE,
	)
	if err != nil {
		panic(err)
	}

	renderer, err := sdl.CreateRenderer(window, -1, sdl.RENDERER_ACCELERATED)
	if err != nil {
		panic(err)
	}
	tex, err := renderer.CreateTexture(
		sdl.PIXELFORMAT_ARGB8888,
		sdl.TEXTUREACCESS_STREAMING,
		int32(w),
		int32(h),
	)
	if err != nil {
		panic(err)
	}

	return window, renderer, tex
}
