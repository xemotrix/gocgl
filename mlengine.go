package gocgl

import (
	"unsafe"

	"github.com/veandco/go-sdl2/sdl"
)

type MLEngine struct {
	Window   *sdl.Window
	Renderer *sdl.Renderer
	Texture  *sdl.Texture
	Image    *Image
	Layers   []*Image
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
		Window:   window,
		Renderer: renderer,
		Texture:  texture,
		Image:    NewImage(w, h),
		Layers:   layers,
	}
}

func (e *MLEngine) RenderLayers() {
	e.Image.CopyFrom(e.Layers[0])
	for _, layer := range e.Layers[1:] {
		e.Image.Overlay(layer)
	}
}

func (e *MLEngine) Render() {
	e.RenderLayers()
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
