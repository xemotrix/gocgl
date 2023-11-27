//go:build arm64

package gocgl

func Overlay(img, other *Image) {
	img.overlay(other)
}

func ApplyAlphaReduction(img *Image, delta uint8) {
	img.applyAlphaReduction(delta)
}
