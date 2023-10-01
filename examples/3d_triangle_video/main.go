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

	t1 := gocgl.TriangleZ{
		Points: [3]*gocgl.PointZ{
			{X: -1, Y: 1, Z: 1},
			{X: 1, Y: 1, Z: 1},
			{X: 0, Y: -1, Z: 1},
		},
	}
	t2 := gocgl.TriangleZ{
		Points: [3]*gocgl.PointZ{
			{X: 0, Y: 1, Z: 0},
			{X: 0, Y: 1, Z: 2},
			{X: 0, Y: -1, Z: 1},
		},
	}

	var rps float64 = 0.05
	var counter uint32 = 0

	for handleEvents() {
		engine.Image.FillWithColor(COLOR_BLK)

		angle := float64(FPS) * 2 * math.Pi * rps / 1000

		t1.RotateY(0, 1, angle)
		t1.RenderZ(engine.Image, COLOR_MAG, COLOR_YEL, COLOR_CYN)

		t2.RotateY(0, 1, angle)
		t2.RenderZ(engine.Image, COLOR_MAG, COLOR_YEL, COLOR_CYN)

		engine.Image.WritePPM(fmt.Sprintf("triangle3d_frames/out%04d.ppm", counter))
		counter++
		if counter >= N_FRAMES {
			break
		}
	}
}
