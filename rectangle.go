package gocgl

type Rectangle struct {
	Points [2]Point
}

func (r *Rectangle) Render(
	img *Image,
	color uint32,
) {
	x1, y1 := r.Points[0].X, r.Points[0].Y
	x2, y2 := r.Points[1].X, r.Points[1].Y

	minx := int(min(x1, x2))
	maxx := int(max(x1, x2))
	miny := int(min(y1, y2))
	maxy := int(max(y1, y2))

	for y := miny; y <= maxy; y++ {
		for x := minx; x <= maxx; x++ {
			img.SetPixel(uint32(x), uint32(y), color)
		}
	}
}
