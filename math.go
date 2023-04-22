package gocgl

import (
	"golang.org/x/exp/constraints"
)

type Ints interface {
	int | int8 | int16 | int32 | int64 | uint | uint8 | uint16 | uint32 | uint64
}

type Number interface {
	constraints.Float | constraints.Integer
}

func lineFromSegment[T Number](ix1, iy1, ix2, iy2 T) (k, c float64) {
	x1 := float64(ix1)
	y1 := float64(iy1)
	x2 := float64(ix2)
	y2 := float64(iy2)

	if x1 == x2 {
		return 0, 0
	}
	k = (y2 - y1) / (x2 - x1)
	c = y1 - k*x1
	return
}

func abs[T Number](x T) T {
	if x < 0 {
		return -x
	}
	return x
}

func min[T constraints.Ordered](a, b T) T {
	if a < b {
		return a
	}
	return b
}
func max[T constraints.Ordered](a, b T) T {
	if a > b {
		return a
	}
	return b
}
