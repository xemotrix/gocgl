package gocgl

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
