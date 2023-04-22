package gocgl

import "math"

type PointZ struct {
	X, Y, Z float64
}

func (p *PointZ) RotateY(x, z, angle float64) {
	aux := Point{p.X, p.Z}
	aux.Rotate(angle, &Point{x, z})
	p.X = aux.X
	p.Z = aux.Y
}

func (p *PointZ) Sub(other *PointZ) PointZ {
	return PointZ{p.X - other.X, p.Y - other.Y, p.Z - other.Z}
}

func (p *PointZ) Add(other *PointZ) {
	p.X += other.X
	p.Y += other.Y
	p.Z += other.Z
}

func (p *PointZ) Project(w, h uint32) Point {
	denom := 1 / (1 + (p.Z))
	p2d := Point{p.X * denom, p.Y * denom}
	p2d.MapUp(w, h)
	return p2d
}

func (p *PointZ) Magnitude() float64 {
	return math.Sqrt(p.X*p.X + p.Y*p.Y + p.Z*p.Z)
}

func (p *PointZ) Normalize() *PointZ {
	mag := p.Magnitude()
	return &PointZ{p.X / mag, p.Y / mag, p.Z / mag}
}

func (p *PointZ) CrossP(other PointZ) *PointZ {
	x := p.Y*other.Z - p.Z*other.Y
	y := p.Z*other.X - p.X*other.Z
	z := p.X*other.Y - p.Y*other.X
	return &PointZ{x, y, z}
}
