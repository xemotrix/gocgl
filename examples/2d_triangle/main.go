package main

import (
	"math"

	"github.com/xemotrix/gocgl"

	"github.com/veandco/go-sdl2/sdl"
)

const (
	FACTOR = 20
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

	t1 := gocgl.Triangle{
		Points: [3]gocgl.Point{
			{X: -0.7, Y: 0.5},
			{X: 0.5, Y: 0},
			{X: 0.3, Y: -0.5},
		},
	}

	var rps float64 = 0.1
	last := sdl.GetTicks()

	for handleEvents() {
		engine.Image.FillWithColor(COLOR_BLK)

		curTicks := sdl.GetTicks()
		ticks := curTicks - last
		last = curTicks
		angle := float64(ticks) * 2 * math.Pi * rps / 1000

		t1.Rotate(angle, t1.Center())
		t1.Render(engine.Image, COLOR_MAG, COLOR_YEL, COLOR_CYN)

		engine.Render()
	}
}
