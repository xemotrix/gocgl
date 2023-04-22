package gocgl

type LineZ struct {
	P1, P2 PointZ
}

func (l *LineZ) RotateY(x, z, angle float64) {
	l.P1.RotateY(x, z, angle)
	l.P2.RotateY(x, z, angle)
}

func (l *LineZ) Render(
	img *Image,
	color uint32,
) {
	pp1 := l.P1.Project(uint32(img.width), uint32(img.height))
	pp2 := l.P2.Project(uint32(img.width), uint32(img.height))

	l2d := Line{
		P1: pp1,
		P2: pp2,
	}
	l2d.Render(img, color)
}
