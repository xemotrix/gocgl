package gocgl

import (
	"math"
)

type Line struct {
	P1, P2 Point
}

func (l *Line) Render(
	img *Image,
	color uint32,
) {

	p1 := l.P1
	p2 := l.P2

	p1.MapUp(img.Width, img.Height)
	p2.MapUp(img.Width, img.Height)

	x0 := p1.X
	y0 := p1.Y
	x1 := p2.X
	y1 := p2.Y

	if x0 < 0 || x1 < 0 || y0 < 0 || y1 < 0 {
		return
	}

	if x0 == x1 {
		drawVerticalLine(img, x0, y0, y1, color)
		return
	}
	if y0 == y1 {
		drawHorizontalLine(img, x0, x1, y0, color)
		return
	}

	// y = kx + c
	k, c := lineFromSegment(x0, y0, x1, y1)

	dx := abs(x1 - x0)
	dy := abs(y1 - y0)

	if dx > dy {
		drawLineLow(img, x0, x1, k, c, color)
		return
	}
	drawLineHigh(img, y0, y1, k, c, color)
}

func drawLineLow(img *Image, x0, x1, k, c float64, color uint32) {
	if x0 > x1 {
		x0, x1 = x1, x0
	}
	for x := x0; x <= x1; x++ {
		y := k*x + c
		img.SetPixel(uint32(x), uint32(y), color)
	}
}

func drawLineHigh(img *Image, y0, y1, k, c float64, color uint32) {
	if y0 > y1 {
		y0, y1 = y1, y0
	}
	for y := y0; y <= y1; y++ {
		x := (y - c) / k
		img.SetPixel(uint32(x), uint32(y), color)
	}
}

func drawHorizontalLine(img *Image, x1, x2, y float64, color uint32) {
	xFrom := uint32(min(x1, x2))
	xTo := uint32(max(x1, x2))
	for x := xFrom; x <= xTo; x++ {
		img.SetPixel(x, uint32(y), color)
	}
}

func drawVerticalLine(img *Image, x, y1, y2 float64, color uint32) {
	yFrom := uint32(min(y1, y2))
	yTo := uint32(max(y1, y2))
	for y := yFrom; y <= yTo; y++ {
		img.SetPixel(uint32(x), y, color)
	}
}

func (l *Line) Length() float64 {
	return l.P1.Distance(l.P2)
}

// Xiaolin Wu's line algorithm
func fpart(x float64) float64 {
	return x - math.Floor(x)
}
func rfpart(x float64) float64 {
	return 1 - fpart(x)
}
func modifyAlpha(color uint32, brightness float64) uint32 {
	alpha := uint32(brightness * float64(color>>24))
	return (color & 0x00ffffff) | (alpha << 24)
}
func (l *Line) RenderAA(img *Image, color uint32) {
	x0 := l.P1.X
	y0 := l.P1.Y
	x1 := l.P2.X
	y1 := l.P2.Y
	steep := abs(y1-y0) > abs(x1-x0)

	if steep {
		x0, y0 = y0, x0
		x1, y1 = y1, x1
	}
	if x0 > x1 {
		x0, x1 = x1, x0
		y0, y1 = y1, y0
	}

	dx := x1 - x0
	dy := y1 - y0

	var gradient float64
	if dx == 0 {
		gradient = 1
	} else {
		gradient = dy / dx
	}

	// first endpoint
	xend := math.Round(x0)
	yend := y0 + gradient*(xend-x0)
	xgap := rfpart(x0 + 0.5)
	xpxl1 := xend // this will be used in the main loop
	ypxl1 := math.Floor(yend)
	if steep {
		img.SetPixel(uint32(ypxl1), uint32(xpxl1), modifyAlpha(color, rfpart(yend)*xgap))
		img.SetPixel(uint32(ypxl1+1), uint32(xpxl1), modifyAlpha(color, fpart(yend)*xgap))
	} else {
		img.SetPixel(uint32(xpxl1), uint32(ypxl1), modifyAlpha(color, rfpart(yend)*xgap))
		img.SetPixel(uint32(xpxl1), uint32(ypxl1+1), modifyAlpha(color, fpart(yend)*xgap))
	}
	intery := yend + gradient // first y-intersection for the main loop

	// second endpoint
	xend = math.Round(x1)
	yend = y1 + gradient*(xend-x1)
	xgap = fpart(x1 + 0.5)
	xpxl2 := xend // this will be used in the main loop
	ypxl2 := math.Floor(yend)
	if steep {
		img.SetPixel(uint32(ypxl2), uint32(xpxl2), modifyAlpha(color, rfpart(yend)*xgap))
		img.SetPixel(uint32(ypxl2+1), uint32(xpxl2), modifyAlpha(color, fpart(yend)*xgap))
	} else {
		img.SetPixel(uint32(xpxl2), uint32(ypxl2), modifyAlpha(color, rfpart(yend)*xgap))
		img.SetPixel(uint32(xpxl2), uint32(ypxl2+1), modifyAlpha(color, fpart(yend)*xgap))
	}

	// main loop
	if steep {
		for x := xpxl1 + 1; x <= xpxl2-1; x++ {
			img.SetPixel(uint32(math.Floor(intery)), uint32(x), modifyAlpha(color, rfpart(intery)))
			img.SetPixel(uint32(math.Floor(intery)+1), uint32(x), modifyAlpha(color, fpart(intery)))
			intery = intery + gradient
		}
	} else {
		for x := xpxl1 + 1; x <= xpxl2-1; x++ {
			img.SetPixel(uint32(x), uint32(math.Floor(intery)), modifyAlpha(color, rfpart(intery)))
			img.SetPixel(uint32(x), uint32(math.Floor(intery)+1), modifyAlpha(color, fpart(intery)))
			intery = intery + gradient
		}
	}
}
