package gocgl

type Triangle struct {
	Points [3]Point
}

func (t *Triangle) RenderTriangleBounds(
	img *Image,
	color uint32,
) {
	l1 := Line{t.Points[0], t.Points[1]}
	l2 := Line{t.Points[1], t.Points[2]}
	l3 := Line{t.Points[2], t.Points[0]}
	l1.Render(img, color)
	l2.Render(img, color)
	l3.Render(img, color)
}

func (t *Triangle) Center() *Point {
	x1, y1 := t.Points[0].X, t.Points[0].Y
	x2, y2 := t.Points[1].X, t.Points[1].Y
	x3, y3 := t.Points[2].X, t.Points[2].Y
	third := 1.0 / 3.0

	x := x1 + third*(x2-x1) + third*(x3-x1)
	y := y1 + third*(y2-y1) + third*(y3-y1)

	return &Point{x, y}
}

func (t *Triangle) BarycentricCoordinates(p Point) (l1, l2, l3 float64) {
	// https://en.wikipedia.org/wiki/Barycentric_coordinate_system
	// https://users.csc.calpoly.edu/~zwood/teaching/csc471/2017F/barycentric.pdf

	x, y := p.X, p.Y
	x1, y1 := t.Points[0].X, t.Points[0].Y
	x2, y2 := t.Points[1].X, t.Points[1].Y
	x3, y3 := t.Points[2].X, t.Points[2].Y

	invDet := 1.0 / ((x1-x3)*(y2-y3) + (x3-x2)*(y1-y3))

	l1 = float64((y2-y3)*(x-x3)+(x3-x2)*(y-y3)) * invDet
	l2 = float64((y3-y1)*(x-x3)+(x1-x3)*(y-y3)) * invDet
	l3 = 1.0 - l1 - l2
	return
}

func (t *Triangle) ColorFromBariCoords(c1, c2, c3 uint32, l1, l2, l3 float64) uint32 {
	a := byte(float64(c1>>24&0xff)*l1 + float64(c2>>24&0xff)*l2 + float64(c3>>24&0xff)*l3)
	r := byte(float64(c1>>16&0xff)*l1 + float64(c2>>16&0xff)*l2 + float64(c3>>16&0xff)*l3)
	g := byte(float64(c1>>8&0xff)*l1 + float64(c2>>8&0xff)*l2 + float64(c3>>8&0xff)*l3)
	b := byte(float64(c1&0xff)*l1 + float64(c2&0xff)*l2 + float64(c3&0xff)*l3)
	color := uint32(a)<<24 | uint32(r)<<16 | uint32(g)<<8 | uint32(b)
	return color
}

func (to *Triangle) Render(
	img *Image,
	co1, co2, co3 uint32,
) {
	t := to.Copy()
	t.Points[0].MapUp(img.Width, img.Height)
	t.Points[1].MapUp(img.Width, img.Height)
	t.Points[2].MapUp(img.Width, img.Height)

	x1, y1 := int32(t.Points[0].X), int32(t.Points[0].Y)
	x2, y2 := int32(t.Points[1].X), int32(t.Points[1].Y)
	x3, y3 := int32(t.Points[2].X), int32(t.Points[2].Y)

	maxx := max(x1, max(x2, x3))
	minx := min(x1, min(x2, x3))
	maxy := max(y1, max(y2, y3))
	miny := min(y1, min(y2, y3))

	for y := miny; y <= maxy; y++ {
		for x := minx; x <= maxx; x++ {
			l1, l2, l3 := t.BarycentricCoordinates(Point{float64(x), float64(y)})
			if l1 >= 0 && l2 >= 0 && l3 >= 0 {
				color := t.ColorFromBariCoords(co1, co2, co3, l1, l2, l3)
				img.SetPixel(uint32(x), uint32(y), color)
			} else if l1 > 0 || l2 > 0 || l3 > 0 {
				img.SetPixel(uint32(x), uint32(y), 0xffff00ff)
			}
		}
	}
}

func (t *Triangle) Copy() *Triangle {
	return &Triangle{
		Points: [3]Point{
			t.Points[0],
			t.Points[1],
			t.Points[2],
		},
	}
}

func (t *Triangle) Rotate(angle float64, c *Point) {
	for i := 0; i < 3; i++ {
		t.Points[i].Rotate(angle, c)
	}
}
