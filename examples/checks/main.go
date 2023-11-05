package main

import (
	"fmt"

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

	engine := gocgl.NewHeadlessMLEngine(WIDTH, HEIGHT, 2)
	engine.Layers[0].FillWithColor(0xff998877)

	fmt.Printf("%08x\n", engine.Layers[0].Arr[3])

	for i := 0; i < 140; i++ {
		engine.Layers[0].ApplyAlphaReduction(0xfe)
		fmt.Printf("%02x\n", engine.Layers[0].Arr[3])
	}

}
