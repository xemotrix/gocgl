package gocgl

import (
	"fmt"
	"os"
	"unsafe"
)

const PIXBYTES = 4

type Image struct {
	Arr    []byte
	Zbuf   []float64
	Width  uint32
	Height uint32
}

func NewImage(width, height uint32) *Image {
	return &Image{
		Arr:    make([]byte, width*height*PIXBYTES),
		Zbuf:   make([]float64, width*height),
		Width:  width,
		Height: height,
	}
}

func (img *Image) index(x, y uint32) uint32 {
	return (y*img.Width + x) * PIXBYTES
}

func (img *Image) SetPixelZ(x, y uint32, z float64, color uint32) {
	if x >= img.Width || x < 0 || y >= img.Height || y < 0 {
		return
	}
	index := y*img.Width + x
	if z < img.Zbuf[index] {
		return
	}
	img.Zbuf[index] = z
	img.SetPixel(x, y, color)
}

func (img *Image) SetPixel(x, y uint32, color uint32) {
	if x >= img.Width || x < 0 || y >= img.Height || y < 0 {
		return
	}
	alphaHex := color >> 24
	if alphaHex == 0x00 {
		return
	}

	index := img.index(x, y)

	alpha := float64(alphaHex) / 0xff
	r := byte(color >> 16)
	g := byte(color >> 8)
	b := byte(color)

	alpha0Hex := img.Arr[index+3]
	r0 := img.Arr[index+2]
	g0 := img.Arr[index+1]
	b0 := img.Arr[index]

	alpha0 := float64(alpha0Hex) / 0xff
	overAlpha := alpha + alpha0*(1-alpha)

	r = byte(((float64(r) * alpha) + (float64(r0) * alpha0 * (1 - alpha))) / overAlpha)
	g = byte(((float64(g) * alpha) + (float64(g0) * alpha0 * (1 - alpha))) / overAlpha)
	b = byte(((float64(b) * alpha) + (float64(b0) * alpha0 * (1 - alpha))) / overAlpha)

	img.Arr[index+3] = byte(overAlpha * 0xff)
	img.Arr[index+2] = r
	img.Arr[index+1] = g
	img.Arr[index] = b
}

func (img *Image) CopyFrom(other *Image) {
	copy(img.Arr, other.Arr)
	copy(img.Zbuf, other.Zbuf)
}

func (img *Image) Overlay(other *Image) {
	for index := 0; index < len(img.Arr); index += PIXBYTES {
		alpha := float64(other.Arr[index+3]) / 0xff
		r := other.Arr[index+2]
		g := other.Arr[index+1]
		b := other.Arr[index]

		alpha0Hex := img.Arr[index+3]
		r0 := img.Arr[index+2]
		g0 := img.Arr[index+1]
		b0 := img.Arr[index]

		alpha0 := float64(alpha0Hex) / 0xff
		overAlpha := alpha + alpha0*(1-alpha)

		r = byte(((float64(r) * alpha) + (float64(r0) * alpha0 * (1 - alpha))) / overAlpha)
		g = byte(((float64(g) * alpha) + (float64(g0) * alpha0 * (1 - alpha))) / overAlpha)
		b = byte(((float64(b) * alpha) + (float64(b0) * alpha0 * (1 - alpha))) / overAlpha)

		img.Arr[index+3] = byte(overAlpha * 0xff)
		img.Arr[index+2] = r
		img.Arr[index+1] = g
		img.Arr[index] = b
	}
}

func (img *Image) FillWithColor(color uint32) {
	for i := 0; i < len(img.Arr); i += PIXBYTES {
		*(*uint32)(unsafe.Pointer(&img.Arr[i])) = color
	}
	img.Zbuf = make([]float64, img.Width*img.Height)
}

func (img *Image) ApplyColorFilter(color uint32) {
	for x := uint32(0); x < img.Width; x += 1 {
		for y := uint32(0); y < img.Height; y += 1 {
			img.SetPixel(x, y, color)
		}
	}
}

func (img *Image) ApplyAlphaReduction(mod float64) {
	for i := 0; i < len(img.Arr); i += PIXBYTES {
		img.Arr[i+3] = byte(float64(img.Arr[i+3]) * mod)
	}
}

func (img *Image) WritePPM(filePath string) error {
	f, _ := os.Create(filePath)
	defer f.Close()

	header := []byte(fmt.Sprintf("P6 %d %d 255 ", img.Width, img.Height))

	_, err := f.Write(header)
	if err != nil {
		return err
	}

	imgBytes := make([]byte, img.Width*img.Height*3)

	for i := 0; i < len(img.Arr); i += PIXBYTES {
		imgBytes[i/PIXBYTES*3] = img.Arr[i+2]
		imgBytes[i/PIXBYTES*3+1] = img.Arr[i+1]
		imgBytes[i/PIXBYTES*3+2] = img.Arr[i]
	}
	_, err = f.WriteAt(
		imgBytes,
		int64(len(header)),
	)
	return err
}
