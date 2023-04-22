package gocgl

type Mesh struct {
	Vertices []PointZ
	Normals  []PointZ
	Faces    [][3]int
}

func (m *Mesh) ComputeNormals() {
	m.Normals = make([]PointZ, len(m.Vertices))
	for _, t := range m.Faces {
		n := Normal(&m.Vertices[t[0]], &m.Vertices[t[1]], &m.Vertices[t[2]])
		m.Normals[t[0]].Add(n)
		m.Normals[t[1]].Add(n)
		m.Normals[t[2]].Add(n)
	}
	for i := range m.Normals {
		m.Normals[i] = *m.Normals[i].Normalize()
	}
}

func (m *Mesh) Render(img *Image, color uint32) {
	m.ComputeNormals()
	for _, t := range m.Faces {
		m.RenderTriangleZ(img, t[0], t[1], t[2], color)
	}
}

func (m *Mesh) RotateY(x, z, angle float64) {
	for i := range m.Vertices {
		m.Vertices[i].RotateY(x, z, angle)
	}
}

func (m *Mesh) FlipZY() {
	for i := range m.Vertices {
		m.Vertices[i].Z -= 1
		m.Vertices[i].Z, m.Vertices[i].Y = -m.Vertices[i].Y, -m.Vertices[i].Z
		m.Vertices[i].Z += 1
	}
}

func (m *Mesh) RenderTriangleZ(
	img *Image,
	i1, i2, i3 int,
	color uint32,
) {
	p1, p2, p3 := &m.Vertices[i1], &m.Vertices[i2], &m.Vertices[i3]
	n1, n2, n3 := &m.Normals[i1], &m.Normals[i2], &m.Normals[i3]

	coB1 := 0xff * (1 - (n1.X+1)*0.5)
	coB2 := 0xff * (1 - (n2.X+1)*0.5)
	coB3 := 0xff * (1 - (n3.X+1)*0.5)

	co1 := color >> 16 & 0xff
	co2 := color >> 8 & 0xff
	co3 := color & 0xff

	pp1 := p1.Project(uint32(img.width), uint32(img.height))
	pp2 := p2.Project(uint32(img.width), uint32(img.height))
	pp3 := p3.Project(uint32(img.width), uint32(img.height))

	x1, y1 := int32(pp1.X), int32(pp1.Y)
	x2, y2 := int32(pp2.X), int32(pp2.Y)
	x3, y3 := int32(pp3.X), int32(pp3.Y)

	maxx := max(x1, max(x2, x3))
	minx := min(x1, min(x2, x3))
	maxy := max(y1, max(y2, y3))
	miny := min(y1, min(y2, y3))

	for y := miny; y <= maxy; y++ {
		for x := minx; x <= maxx; x++ {
			l1, l2, l3 := BarycentricCoordinates(
				Point{float64(x), float64(y)},
				pp1, pp2, pp3,
			)
			if l1 >= 0 && l2 >= 0 && l3 >= 0 {
				z := l1/(1+p1.Z) + l2/(1+p2.Z) + l3/(1+p3.Z)
				colorByte := uint32(coB1*l1 + coB2*l2 + coB3*l3)
				color := 0xff<<24 |
					(co1*colorByte/0xff)<<16 |
					(co2*colorByte/0xff)<<8 |
					(co3 * colorByte / 0xff)
				img.SetPixelZ(uint32(x), uint32(y), z, color)
			}
		}
	}
}

func (m *Mesh) Shade2(p1, p2, p3 *PointZ) uint32 {
	norm := Normal(p1, p2, p3)
	shade := 0.5 * (norm.X + 1)
	colorByte := uint32(0xff * shade)
	return 0xff<<24 | colorByte<<16 | colorByte<<8 | colorByte
}

func Shade(p1, p2, p3 *PointZ) uint32 {
	norm := Normal(p1, p2, p3)
	shade := 0.5 * (norm.X + 1)
	colorByte := uint32(0xff * shade)
	return 0xff<<24 | colorByte<<16 | colorByte<<8 | colorByte
}

func Normal(p1, p2, p3 *PointZ) *PointZ {
	v1 := p2.Sub(p1)
	v2 := p3.Sub(p1)
	return v1.CrossP(v2).Normalize()
}

func BarycentricCoordinates(px, p1, p2, p3 Point) (l1, l2, l3 float64) {
	// https://en.wikipedia.org/wiki/Barycentric_coordinate_system
	// https://users.csc.calpoly.edu/~zwood/teaching/csc471/2017F/barycentric.pdf
	x, y := px.X, px.Y
	x1, y1 := p1.X, p1.Y
	x2, y2 := p2.X, p2.Y
	x3, y3 := p3.X, p3.Y

	invDet := 1.0 / ((x1-x3)*(y2-y3) + (x3-x2)*(y1-y3))

	l1 = float64((y2-y3)*(x-x3)+(x3-x2)*(y-y3)) * invDet
	l2 = float64((y3-y1)*(x-x3)+(x1-x3)*(y-y3)) * invDet
	l3 = 1.0 - l1 - l2
	return
}
