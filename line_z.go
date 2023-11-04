package gocgl

type LineZ struct {
	P1, P2 PointZ
}

func (l *LineZ) RotateY(x, z, angle float64) {
	l.P1.RotateY(x, z, angle)
	l.P2.RotateY(x, z, angle)
}

func (l *LineZ) Length() float64 {
	return l.P1.Distance(l.P2)
}

func (l *LineZ) Render(
	img *Image,
	color uint32,
) {
	pp1 := l.P1.Project(img.Width, img.Height)
	pp2 := l.P2.Project(img.Width, img.Height)

	l2d := Line{
		P1: pp1,
		P2: pp2,
	}
	l2d.RenderAA(img, color)
}

func (l *LineZ) RenderWidthOverwriteBrightness(
	img *Image,
	color uint32,
	widthPx float64,
) {
	pp1 := l.P1.Project(img.Width, img.Height)
	pp2 := l.P2.Project(img.Width, img.Height)

	l2d := Line{
		P1: pp1,
		P2: pp2,
	}
	l2d.RenderWidthOverwriteBrightness(img, color, widthPx)
}
func (l *LineZ) RenderWidth(
	img *Image,
	color uint32,
	widthPx float64,
) {
	pp1 := l.P1.Project(img.Width, img.Height)
	pp2 := l.P2.Project(img.Width, img.Height)

	l2d := Line{
		P1: pp1,
		P2: pp2,
	}
	l2d.RenderWidth(img, color, widthPx)
}
