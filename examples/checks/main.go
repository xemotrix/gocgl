package main

import (
	"fmt"
	"math"

	"github.com/veandco/go-sdl2/sdl"
	"github.com/xemotrix/gocgl"
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

	engine := gocgl.NewMLEngine(WIDTH, HEIGHT, 2)
	// engine.Layers[0].FillWithColor(0x88ffaaaa)
	engine.Layers[0].FillWithColor(0xffffaaaa)
	// engine.Layers[0].FillWithColor(0x55aaffaa)

	ls := []gocgl.LineZ{
		{
			P1: gocgl.PointZ{X: -0.5, Y: -0.5, Z: 1},
			P2: gocgl.PointZ{X: 0.5, Y: 0.5, Z: 1},
		},
		{
			P1: gocgl.PointZ{X: 0.5, Y: -0.5, Z: 1},
			P2: gocgl.PointZ{X: -0.5, Y: 0, Z: 1},
		},
		{
			P1: gocgl.PointZ{X: 0.5, Y: -0.5, Z: 1},
			P2: gocgl.PointZ{X: -0.5, Y: -0.2, Z: 1},
		},
	}
	lws := []gocgl.LineZ{
		{
			P1: gocgl.PointZ{X: 0.5, Y: -0.3, Z: 1},
			P2: gocgl.PointZ{X: -0.5, Y: 0.2, Z: 1},
		},
	}

	for handleEvents() {

		engine.Layers[0].FillWithColor(0xff1a1a38)
		engine.Layers[1].FillWithColor(0)

		for _, l := range ls {
			l.Render(engine.Layers[1], 0xffb29be9)
		}
		for _, l := range lws {
			l.RenderWidth(engine.Layers[1], 0xffb29be9, 2)
		}
		engine.Render()

	}
}

func overlays() {

	engine := gocgl.NewMLEngine(WIDTH, HEIGHT, 3)
	engine.Layers[0].FillWithColor(0x88ffaaaa)

	rect := gocgl.Rectangle{
		Points: [2]gocgl.Point{
			{X: 100, Y: 100},
			{X: 150, Y: 150},
		},
	}
	rect2 := gocgl.Rectangle{
		Points: [2]gocgl.Point{
			{X: 50, Y: 50},
			{X: WIDTH - 50, Y: HEIGHT - 50},
		},
	}
	l := gocgl.LineZ{
		P1: gocgl.PointZ{X: -0.5, Y: -0.5, Z: 1},
		P2: gocgl.PointZ{X: 0.5, Y: 0.5, Z: 1},
	}
	l2 := gocgl.LineZ{
		P1: gocgl.PointZ{X: 0.5, Y: -0.5, Z: 1},
		P2: gocgl.PointZ{X: -0.5, Y: 0.5, Z: 1},
	}

	fmt.Printf("%08x\n", engine.Layers[0].Arr[3])

	rect2.Render(engine.Layers[0], 0x99880088)
	rect.Render(engine.Layers[0], 0x99000088)
	l.RenderWidth(engine.Layers[0], 0x99000088, 20)
	l2.RenderWidth(engine.Layers[0], 0x99000088, 20)

	// engine.Layers[0].RasterTranslation(0, 0, 0.95, 0.95, engine.Layers[1])
	// engine.Layers[0].FillWithColor(0x5500aa00)
	zOffset := 0.0
	xOffset := 0.0
	yOffset := 0.0
	counter := 0
	for handleEvents() {
		counter++
		// time.Sleep(10 * time.Millisecond)

		engine.Layers[1].FillWithColor(0)
		engine.Layers[0].ProjectOnTo(engine.Layers[1], xOffset, yOffset, zOffset)

		zOffset += 0.001
		xOffset += math.Sin(float64(counter%360)/180*2*math.Pi) * 0.005
		yOffset += math.Cos(float64(counter%360)/180*2*math.Pi) * 0.005

		engine.Render()
	}
}
