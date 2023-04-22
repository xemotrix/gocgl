package gocgl

import (
	"math"
)

type Circle struct {
	Center Point
	Radius float64
}

func (c *Circle) Render(
	img *Image,
	color uint32,
) {
	x := c.Center.X
	y := c.Center.Y
	radius := c.Radius

	radius_sq := radius * radius
	for iy := y - radius; iy <= y+radius; iy++ {
		for ix := x - radius; ix <= x+radius; ix++ {
			if (ix-x)*(ix-x)+(iy-y)*(iy-y) <= radius_sq {
				img.SetPixel(uint32(ix), uint32(iy), color)
			}
		}
	}
}

func (c *Circle) RenderAA(
	img *Image,
	color uint32,
) {
	x := c.Center.X
	y := c.Center.Y
	radius := c.Radius

	for iy := y - radius; iy <= y+radius; iy++ {
		for ix := x - radius; ix <= x+radius; ix++ {
			dist := math.Sqrt((ix-x)*(ix-x) + (iy-y)*(iy-y))

			if math.Ceil(dist) > radius && math.Floor(dist) <= radius {
				alpha := byte((math.Ceil(dist) - dist) * float64(color>>24))
				newColor := uint32(alpha)<<24 | color&0x00ffffff
				img.SetPixel(uint32(ix), uint32(iy), newColor)
				continue
			}

			if dist <= radius {
				img.SetPixel(uint32(ix), uint32(iy), color)
			}
		}
	}
}
