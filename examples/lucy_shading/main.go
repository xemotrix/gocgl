package main

import (
	"fmt"
	"math"
	"time"

	"github.com/xemotrix/gocgl"

	"github.com/veandco/go-sdl2/sdl"
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
	engine := gocgl.NewEngine(WIDTH, HEIGHT)

	m := gocgl.ParseObjFile("examples/example_data/lucy.obj")
	m.FlipZY()

	var rps float64 = 0.1
	last := sdl.GetTicks()

	for handleEvents() {
		start := time.Now()
		engine.Image.FillWithColor(COLOR_BLK)

		curTicks := sdl.GetTicks()
		ticks := curTicks - last
		last = curTicks
		angle := float64(ticks) * 2 * math.Pi * rps / 1000

		m.RotateY(0, 1, angle)
		m.Render(engine.Image, COLOR_WHT)

		engine.Render()
		fmt.Println("Frame render time:", time.Since(start))
	}
}
