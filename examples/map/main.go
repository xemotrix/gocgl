package main

import (
	"fmt"
	"os"
	"strconv"
	"strings"
	"sync"
	"time"

	"github.com/veandco/go-sdl2/sdl"
	"github.com/xemotrix/gocgl"
	"golang.org/x/exp/slices"
)

const (
	FACTOR = 100
	WIDTH  = 9 * FACTOR
	HEIGHT = 16 * FACTOR

	COLOR_BLK = 0xff000000
	COLOR_WHT = 0xffffffff
	COLOR_RED = 0xffff0000
	COLOR_GRN = 0xff00ff00
	COLOR_BLU = 0xff0000ff
	COLOR_YEL = 0xffffff00
	COLOR_CYN = 0xff00ffff
	COLOR_MAG = 0xffff00ff

	COLOR_ROAD   = 0xff000055
	COLOR_OTHERS = 0xff7145d6
	COLOR_ASSET  = COLOR_WHT

	// FADE_FACTOR = 0.95
	FADE_FACTOR = 0xf2

	TIME_PER_FRAME = 10 * time.Second

	maxLat = -34.48777974377998
	maxLon = -58.275558373211496
	minLat = -34.729908815849626
	minLon = -58.616292806865744
)

type Layer uint8

const (
	LAYER_ROAD Layer = iota
	LAYER_OTHERS
	LAYER_ASSET
	TOTAL_LAYERS
)

func handleEvents() bool {
	for event := sdl.PollEvent(); event != nil; event = sdl.PollEvent() {
		switch event.(type) {
		case *sdl.QuitEvent:
			return false
		}
	}
	return true
}

type DataPoint struct {
	lat float64
	lon float64
	tm  time.Time
	id  string
}

type MapGenerator struct {
	segments [][2]DataPoint
	asset    string
	t        time.Time
	duration time.Duration
}

func parseLines(lines []string) *MapGenerator {
	dataPoints := make(map[string][]DataPoint)

	for _, line := range lines[1:] {
		if line == "" {
			continue
		}
		rows := strings.Split(line, ",")
		lat, _ := strconv.ParseFloat(rows[0], 64)
		lon, _ := strconv.ParseFloat(rows[1], 64)

		id := rows[2]
		tm := rows[3]

		date, err := time.Parse("2006-01-02 15:04:05", tm[:19])

		if err != nil {
			panic(err)
		}
		dp := DataPoint{lat, lon, date, id}
		if dataPoints[id] == nil {
			dataPoints[id] = []DataPoint{dp}
		} else {
			dataPoints[id] = append(dataPoints[id], dp)
		}
	}
	maxAsset := ""
	maxN := 0

	for k, v := range dataPoints {
		if len(v) > maxN {
			maxN = len(v)
			maxAsset = k
		}
		slices.SortFunc(dataPoints[k], func(i, j DataPoint) int {
			if i.tm.Before(j.tm) {
				return -1
			}
			return 1

		})
	}

	var segments [][2]DataPoint
	for _, v := range dataPoints {
		for i := 0; i < len(v)-1; i++ {
			segments = append(segments, [2]DataPoint{v[i], v[i+1]})
		}
	}

	slices.SortFunc(segments, func(i, j [2]DataPoint) int {
		if i[0].tm.Before(j[0].tm) {
			return -1
		}
		return 1
	})

	minTime := segments[0][0].tm
	maxTime := segments[len(segments)-1][0].tm

	g := MapGenerator{
		segments: segments,
		asset:    maxAsset,
		t:        minTime,
		duration: maxTime.Sub(minTime),
	}

	return &g
}

func lineFromSegment(seg [2]DataPoint) gocgl.LineZ {
	zoomFactor := 5.0
	p1 := gocgl.PointZ{
		Y: -((seg[0].lat-minLat)/(maxLat-minLat) - 0.5) * zoomFactor,
		X: ((seg[0].lon-minLon)/(maxLon-minLon) - 0.5) * zoomFactor,
		Z: 1,
	}
	p2 := gocgl.PointZ{
		Y: -((seg[1].lat-minLat)/(maxLat-minLat) - 0.5) * zoomFactor,
		X: ((seg[1].lon-minLon)/(maxLon-minLon) - 0.5) * zoomFactor,
		Z: 1,
	}
	return gocgl.LineZ{P1: p1, P2: p2}
}

type User struct {
	id       string
	region   string
	journeys []Journey
}
type Journey struct {
	product  string
	polyLine []gocgl.PointZ
}

func main() {
	contents, err := os.ReadFile("examples/map/locations.csv")
	if err != nil {
		panic(err)
	}

	csv_str := string(contents)
	lines := strings.Split(csv_str, "\n")
	mapGen := parseLines(lines)

	counter := 0

	nFrames := int(mapGen.duration / TIME_PER_FRAME)

	engine := gocgl.NewHeadlessMLEngine(WIDTH, HEIGHT, uint32(TOTAL_LAYERS))
	engine.Layers[LAYER_ROAD].FillWithColor(COLOR_BLK)

	var wg sync.WaitGroup
	vch := engine.VideoWriter(".videos/map.mp4", WIDTH, HEIGHT, &wg)

	for handleEvents() {

		goOn := mapGen.renderFrame(engine)
		if !goOn {
			break
		}

		progressBar(&counter, nFrames)

		wg.Wait()
		engine.Render()
		wg.Add(1)
		vch <- engine.Image
	}
	wg.Wait()
	close(vch)
	fmt.Println()
}

func progressBar(frame *int, nFrames int) {
	*frame++
	barSize := float64(30.0)
	progress := float64(*frame) / float64(nFrames)

	bar := strings.Repeat("#", int(progress*barSize))
	bar += strings.Repeat("-", int(barSize)-len(bar)-1)
	fmt.Printf("\rframe %04d/%d [%s]", *frame, nFrames, bar)
}

func lineOutOfBounds(l *gocgl.LineZ) bool {
	factor := 4.0
	return l.P1.X < -factor ||
		l.P1.X > factor ||
		l.P1.Y < -factor ||
		l.P1.Y > factor ||
		l.P2.X < -factor ||
		l.P2.X > factor ||
		l.P2.Y < -factor ||
		l.P2.Y > factor ||
		l.P1.Z < 0 ||
		l.P2.Z < 0
}

func (mg *MapGenerator) renderFrame(e *gocgl.MLEngine) bool {
	e.Layers[LAYER_ASSET].ApplyAlphaReduction(FADE_FACTOR)
	e.Layers[LAYER_OTHERS].ApplyAlphaReduction(FADE_FACTOR)
	mg.t = mg.t.Add(TIME_PER_FRAME)
	idx := 0
	for len(mg.segments) > 1 {
		seg := mg.segments[idx]
		idx++
		if !seg[0].tm.Before(mg.t) {
			break
		}
		l := lineFromSegment(seg)
		if lineOutOfBounds(&l) {
			continue
		}
		if l.Length() > 0.05 {
			continue
		}

		if seg[0].id == mg.asset {
			l.RenderWidth(e.Layers[LAYER_ASSET], COLOR_ASSET, 3.0)
			continue
		}

		l.Render(e.Layers[LAYER_OTHERS], COLOR_OTHERS)
		l.Render(e.Layers[LAYER_ROAD], COLOR_ROAD)
	}

	mg.segments = mg.segments[idx:]

	if idx >= len(mg.segments) {
		return false
	}

	return true
}
