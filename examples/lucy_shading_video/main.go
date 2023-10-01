package main

import (
	"fmt"
	"math"

	"github.com/xemotrix/gocgl"

	"github.com/veandco/go-sdl2/sdl"
)

const (
	FACTOR   = 100
	WIDTH    = 16 * FACTOR
	HEIGHT   = 9 * FACTOR
	FPS      = 60
	N_FRAMES = FPS * 10

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

	var rps float64 = 0.05

	counter := 0

	for handleEvents() {
		engine.Image.FillWithColor(COLOR_BLK)

		angle := float64(FPS) * 2 * math.Pi * rps / 1000

		m.RotateY(0, 1, angle)
		m.Render(engine.Image, COLOR_WHT)

		engine.Image.WritePPM(fmt.Sprintf("lucy_frames/out%04d.ppm", counter))
		counter++
		if counter > N_FRAMES {
			break
		}
	}
}
