package gocgl

import (
	"fmt"
	"os"
	"unsafe"

	"golang.org/x/sys/cpu"
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

func (img *Image) OverwritePixelBrightness(x, y uint32, color uint32) {
	if x >= img.Width || x < 0 || y >= img.Height || y < 0 {
		return
	}

	index := img.index(x, y)
	alpha := img.Arr[index+3]
	if alpha > byte(color>>24) {
		return
	}
	*(*uint32)(unsafe.Pointer(&img.Arr[index])) = color
}

func (img *Image) SetPixel(x, y uint32, color uint32) {
	if x >= img.Width || x < 0 || y >= img.Height || y < 0 {
		return
	}
	alphaFg := uint16(color >> 24)
	if alphaFg == 0x00 {
		return
	}

	index := img.index(x, y)
	if alphaFg == 0xff {
		*(*uint32)(unsafe.Pointer(&img.Arr[index])) = color
		return
	}

	r := uint16((color >> 16) & 0xff)
	g := uint16((color >> 8) & 0xff)
	b := uint16((color) & 0xff)

	bgra := *(*[4]byte)(unsafe.Pointer(&img.Arr[index]))
	bBg := uint16(bgra[0])
	gBg := uint16(bgra[1])
	rBg := uint16(bgra[2])
	alphaBg := uint16(bgra[3])

	rRes := fastAlphaMult(alphaFg, r) + fastAlphaMult(fastAlphaMult(alphaBg, rBg), 0xff-alphaFg)
	gRes := fastAlphaMult(alphaFg, g) + fastAlphaMult(fastAlphaMult(alphaBg, gBg), 0xff-alphaFg)
	bRes := fastAlphaMult(alphaFg, b) + fastAlphaMult(fastAlphaMult(alphaBg, bBg), 0xff-alphaFg)
	aRes := alphaFg + fastAlphaMult(alphaBg, 0xff-alphaFg)

	*(*[4]byte)(unsafe.Pointer(&img.Arr[index])) = [4]byte{
		byte(bRes),
		byte(gRes),
		byte(rRes),
		byte(aRes),
	}

}

func fastAlphaMult(alpha, color uint16) uint16 {
	color = color*alpha + 0x80
	return (color + color>>8) >> 8
}

func (img *Image) CopyFrom(other *Image) {
	copy(img.Arr, other.Arr)
	copy(img.Zbuf, other.Zbuf)
}

func (img *Image) overlay(other *Image) {
	pi := unsafe.Pointer(&img.Arr[0])
	po := unsafe.Pointer(&other.Arr[0])
	l := uintptr(len(img.Arr))
	for index := uintptr(0); index < l; index += PIXBYTES {
		bgraO := *(*[4]byte)((unsafe.Pointer)(uintptr(po) + index))
		if bgraO[3] == 0x00 {
			continue
		}
		bgraI := *(*[4]byte)((unsafe.Pointer)(uintptr(pi) + index))
		alphaI := float32(bgraI[3]) / 0xff
		alphaO := float32(bgraO[3]) / 0xff
		overAlpha := alphaO + alphaI*(1-alphaO)
		*(*[4]byte)((unsafe.Pointer)(uintptr(pi) + uintptr(index))) = [4]byte{
			byte(((float32(bgraO[0]) * alphaO) + (float32(bgraI[0]) * alphaI * (1 - alphaO))) / overAlpha),
			byte(((float32(bgraO[1]) * alphaO) + (float32(bgraI[1]) * alphaI * (1 - alphaO))) / overAlpha),
			byte(((float32(bgraO[2]) * alphaO) + (float32(bgraI[2]) * alphaI * (1 - alphaO))) / overAlpha),
			byte(overAlpha * 0xff),
		}
	}
}

func (img *Image) Overlay(other *Image) {
	if cpu.X86.HasAVX2 {
		OverlayChunk(&img.Arr[0], &other.Arr[0], len(img.Arr)/PIXBYTES)
	} else {
		img.overlay(other)
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

func (img *Image) applyAlphaReduction(delta uint8) {
	deltaF := float64(delta) / 0xff
	p := unsafe.Pointer(&img.Arr[0])
	l := uintptr(len(img.Arr))
	for i := uintptr(0); i < l; i += PIXBYTES {
		alpha := *(*byte)(unsafe.Pointer(uintptr(p) + i + 3))
		if alpha == 0x00 {
			continue
		}
		*(*byte)(unsafe.Pointer(uintptr(p) + i + 3)) = byte(float64(alpha) * deltaF)
	}
}

func (img *Image) ApplyAlphaReduction(delta uint8) {
	if cpu.X86.HasAVX2 {
		applyAlphaReductionASM(&img.Arr[0], delta, len(img.Arr)/PIXBYTES)
	} else {
		img.applyAlphaReduction(delta)
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
