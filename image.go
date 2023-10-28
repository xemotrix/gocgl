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

	p0 := unsafe.Pointer(&img.Arr[0])
	p := (unsafe.Pointer)(uintptr(p0) + uintptr(index))

	bgra := *(*[4]byte)(p)

	alpha0 := float64(bgra[3]) / 0xff
	overAlpha := alpha + alpha0*(1-alpha)

	*(*[4]byte)(p) = [4]byte{
		byte(((float64(b) * alpha) + (float64(bgra[0]) * alpha0 * (1 - alpha))) / overAlpha),
		byte(((float64(g) * alpha) + (float64(bgra[1]) * alpha0 * (1 - alpha))) / overAlpha),
		byte(((float64(r) * alpha) + (float64(bgra[2]) * alpha0 * (1 - alpha))) / overAlpha),
		byte(overAlpha * 0xff),
	}
}

func (img *Image) CopyFrom(other *Image) {
	copy(img.Arr, other.Arr)
	copy(img.Zbuf, other.Zbuf)
}

// func (img *Image) Overlay(other *Image) {
// 	pi := unsafe.Pointer(&img.Arr[0])
// 	po := unsafe.Pointer(&other.Arr[0])
// 	l := uintptr(len(img.Arr))
// 	for index := uintptr(0); index < l; index += PIXBYTES {
// 		bgraO := *(*[4]byte)((unsafe.Pointer)(uintptr(po) + index))
// 		if bgraO[3] == 0x00 {
// 			continue
// 		}
// 		bgraI := *(*[4]byte)((unsafe.Pointer)(uintptr(pi) + index))
// 		alphaI := float32(bgraI[3]) / 0xff
// 		alphaO := float32(bgraO[3]) / 0xff
// 		overAlpha := alphaO + alphaI*(1-alphaO)
// 		*(*[4]byte)((unsafe.Pointer)(uintptr(pi) + uintptr(index))) = [4]byte{
// 			byte(((float32(bgraO[0]) * alphaO) + (float32(bgraI[0]) * alphaI * (1 - alphaO))) / overAlpha),
// 			byte(((float32(bgraO[1]) * alphaO) + (float32(bgraI[1]) * alphaI * (1 - alphaO))) / overAlpha),
// 			byte(((float32(bgraO[2]) * alphaO) + (float32(bgraI[2]) * alphaI * (1 - alphaO))) / overAlpha),
// 			byte(overAlpha * 0xff),
// 		}
// 	}
// }

func (img *Image) Overlay(other *Image) {
	OverlayChunk(&img.Arr[0], &other.Arr[0], len(img.Arr)/PIXBYTES/8)
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

func (img *Image) ApplyAlphaReduction(delta float64) {
	p := unsafe.Pointer(&img.Arr[0])
	l := uintptr(len(img.Arr))
	for i := uintptr(0); i < l; i += PIXBYTES {
		alpha := *(*byte)(unsafe.Pointer(uintptr(p) + i + 3))
		if alpha == 0x00 {
			continue
		}
		*(*byte)(unsafe.Pointer(uintptr(p) + i + 3)) = byte(float64(alpha) * delta)
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
