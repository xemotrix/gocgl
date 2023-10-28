package main

import (
	"fmt"
	"time"

	"github.com/veandco/go-sdl2/sdl"
	"github.com/xemotrix/gocgl"
)

const (
	FACTOR = 100
	WIDTH  = 16 * FACTOR
	HEIGHT = 9 * FACTOR

	COLOR_BLK = 0xff000000
	COLOR_WHT = 0xffffffff
	COLOR_RED = 0xffff0000
	COLOR_GRN = 0xff00ff00
	COLOR_BLU = 0xff0000ff
	COLOR_YEL = 0xffffff00
	COLOR_CYN = 0xff00ffff
	COLOR_MAG = 0xffff00ff
)

func handleEvents() bool {
	for event := sdl.PollEvent(); event != nil; event = sdl.PollEvent() {
		switch event.(type) {
		case *sdl.QuitEvent:
			return false
		}
	}
	return true
}

func main() {

	engine := gocgl.NewHeadlessMLEngine(WIDTH, HEIGHT, 4)
	// engine := gocgl.NewHeadlessMLEngine(WIDTH, HEIGHT, 2)
	engine.Layers[0].FillWithColor(0xff990000)
	engine.Layers[1].FillWithColor(0x81a2a3f4)
	engine.Layers[2].FillWithColor(0x81a2a3f4)
	engine.Layers[3].FillWithColor(0x81a2a3f4)

	// fmt.Printf("%016x\n", engine.Layers[0].Arr[:10])
	// engine.Layers[0].Overlay(engine.Layers[1])
	// fmt.Printf("%016x\n", engine.Layers[0].Arr[:10])

	counter := 0
	tRender := time.Duration(0)
	for handleEvents() {
		counter++
		tStart := time.Now()
		engine.Render()
		tRender += time.Since(tStart)
		if counter > 100 {
			break
		}
	}
	fmt.Printf("Render time: %v\n", tRender)

}
