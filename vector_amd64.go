//go:build amd64

package gocgl

import "golang.org/x/sys/cpu"

func Overlay(img, other *Image) {
	if cpu.X86.HasAVX2 {
		OverlayChunk(&img.Arr[0], &other.Arr[0], len(img.Arr)/PIXBYTES)
	} else {
		img.overlay(other)
	}
}

func OverlayChunk(a, b *byte, lenght int)

func ApplyAlphaReduction(img *Image, delta uint8) {
	if cpu.X86.HasAVX2 {
		applyAlphaReductionASM(&img.Arr[0], delta, len(img.Arr)/PIXBYTES)
	} else {
		img.applyAlphaReduction(delta)
	}
}

func applyAlphaReductionASM(ptr *byte, delta uint8, length int)
