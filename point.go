package gocgl

import "math"

type Point struct {
	X, Y float64
}

func (p *Point) Distance(other Point) float64 {
	dx := p.X - other.X
	dy := p.Y - other.Y
	return math.Sqrt(dx*dx + dy*dy)
}

func (p *Point) Rotate(angle float64, point *Point) {
	dx := p.X - point.X
	dy := p.Y - point.Y
	mag := math.Sqrt(dx*dx + dy*dy)
	theta := math.Atan2(dy, dx)
	p.X = mag * math.Cos(theta+angle)
	p.Y = mag * math.Sin(theta+angle)
	p.X += point.X
	p.Y += point.Y
}

func (p *Point) MapUp(wi, hi uint32) {
	w := float64(wi)
	h := float64(hi)
	if w > h {
		p.X = (p.X+1)/2*h + (w-h)/2
		p.Y = (p.Y + 1) / 2 * h
	} else {
		p.X = (p.X + 1) / 2 * w
		p.Y = (p.Y+1)/2*w + (h-w)/2
	}
}
