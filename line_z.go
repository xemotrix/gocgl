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
	pp1 := l.P1.Project(img.Width, img.Height)
	pp2 := l.P2.Project(img.Width, img.Height)

	pp1.MapDown(img.Width, img.Height)
	pp2.MapDown(img.Width, img.Height)

	l2d := Line{
		P1: pp1,
		P2: pp2,
	}
	l2d.Render(img, color)
}

func (p *Point) MapDown(wi, hi uint32) {
	w := float64(wi)
	h := float64(hi)
	if w > h {
		p.X = 2/h*(p.X-(w-h)/2) - 1
		p.Y = 2/h*p.Y - 1
	} else {
		p.X = 2/w*p.X - 1
		p.Y = 2/w*(p.Y-(h-w)/2) - 1
	}
}

func (l *LineZ) Length() float64 {
	return l.P1.Distance(l.P2)
}
