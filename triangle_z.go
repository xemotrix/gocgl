package gocgl

type TriangleZ struct {
	Points [3]*PointZ
}

func (t *TriangleZ) RenderZ(img *Image, c1, c2, c3 uint32) {
	t2d := Triangle{
		Points: [3]Point{
			t.Points[0].Project(uint32(img.width), uint32(img.height)),
			t.Points[1].Project(uint32(img.width), uint32(img.height)),
			t.Points[2].Project(uint32(img.width), uint32(img.height)),
		},
	}

	x1, y1 := int32(t2d.Points[0].X), int32(t2d.Points[0].Y)
	x2, y2 := int32(t2d.Points[1].X), int32(t2d.Points[1].Y)
	x3, y3 := int32(t2d.Points[2].X), int32(t2d.Points[2].Y)

	maxx := max(x1, max(x2, x3))
	minx := min(x1, min(x2, x3))
	maxy := max(y1, max(y2, y3))
	miny := min(y1, min(y2, y3))

	z1, z2, z3 := t.Points[0].Z, t.Points[1].Z, t.Points[2].Z

	for y := miny; y <= maxy; y++ {
		for x := minx; x <= maxx; x++ {
			l1, l2, l3 := t2d.BarycentricCoordinates(Point{float64(x), float64(y)})
			if l1 >= 0 && l2 >= 0 && l3 >= 0 {
				z := l1/(1+z1) + l2/(1+z2) + l3/(1+z3)
				color := t2d.ColorFromBariCoords(c1, c2, c3, l1, l2, l3)
				img.SetPixelZ(uint32(x), uint32(y), z, color)
			}
		}
	}
}

func (t *TriangleZ) Normal() *PointZ {
	v1 := t.Points[1].Sub(t.Points[0])
	v2 := t.Points[2].Sub(t.Points[0])
	return v1.CrossP(v2).Normalize()
}

func (t *TriangleZ) Copy() *TriangleZ {
	p1, p2, p3 := &(*t.Points[0]), &(*t.Points[1]), &(*t.Points[2])
	return &TriangleZ{
		Points: [3]*PointZ{p1, p2, p3},
	}
}

func (t *TriangleZ) RotateY(x, z, angle float64) {
	t.Points[0].RotateY(x, z, angle)
	t.Points[1].RotateY(x, z, angle)
	t.Points[2].RotateY(x, z, angle)
}
