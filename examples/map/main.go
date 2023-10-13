package main

import (
	"fmt"
	"os"
	"strconv"
	"strings"
	"time"

	"github.com/veandco/go-sdl2/sdl"
	"github.com/xemotrix/gocgl"
	"golang.org/x/exp/slices"
)

const (
	FACTOR = 100
	WIDTH  = 12 * FACTOR
	HEIGHT = 12 * FACTOR

	COLOR_BLK = 0xff000000
	COLOR_WHT = 0xffffffff
	COLOR_RED = 0xffff0000
	COLOR_GRN = 0xff00ff00
	COLOR_BLU = 0xff0000ff
	COLOR_YEL = 0xffffff00
	COLOR_CYN = 0xff00ffff
	COLOR_MAG = 0xffff00ff

	COLOR_OTHERS = 0xff2222aa
	FADE_COLOR   = 0x0f000000

	maxLat = -34.48777974377998
	maxLon = -58.275558373211496
	minLat = -34.729908815849626
	minLon = -58.616292806865744
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
		slices.SortFunc(dataPoints[k], func(i, j DataPoint) bool {
			return i.tm.Before(j.tm)
		})
	}

	var segments [][2]DataPoint
	for _, v := range dataPoints {
		for i := 0; i < len(v)-1; i++ {
			segments = append(segments, [2]DataPoint{v[i], v[i+1]})
		}
	}

	slices.SortFunc(segments, func(i, j [2]DataPoint) bool {
		return i[0].tm.Before(j[0].tm)
	})

	minTime := segments[0][0].tm

	g := MapGenerator{
		segments: segments,
		asset:    maxAsset,
		t:        minTime,
	}

	return &g
}

func outOfBounds(seg [2]DataPoint) bool {
	return seg[0].lat >= maxLat ||
		seg[0].lat <= minLat ||
		seg[0].lon <= minLon ||
		seg[0].lon >= maxLon ||
		seg[1].lat >= maxLat ||
		seg[1].lat <= minLat ||
		seg[1].lon <= minLon ||
		seg[1].lon >= maxLon
}

func lineFromSegment(seg [2]DataPoint) gocgl.LineZ {
	p1 := gocgl.PointZ{
		Z: -((seg[0].lat-minLat)/(maxLat-minLat) - 0.5) * 2,
		X: ((seg[0].lon-minLon)/(maxLon-minLon) - 0.5) * 2,
	}
	p2 := gocgl.PointZ{
		Z: -((seg[1].lat-minLat)/(maxLat-minLat) - 0.5) * 2,
		X: ((seg[1].lon-minLon)/(maxLon-minLon) - 0.5) * 2,
	}
	return gocgl.LineZ{P1: p1, P2: p2}
}

func main() {
	contents, err := os.ReadFile("examples/map/locations.csv")

	if err != nil {
		panic(err)
	}

	csv_str := string(contents)
	lines := strings.Split(csv_str, "\n")
	fmt.Println("finished reading")

	mapGen := parseLines(lines)
	fmt.Println("finished parsing")

	engine := gocgl.NewEngine(WIDTH, HEIGHT)

	for handleEvents() {
		goOn := mapGen.renderFrame(engine)
		if !goOn {
			break
		}
		// engine.Image.WritePPM(fmt.Sprintf("map_frames/out%04d.ppm", counter))
		engine.Render()
	}
}

func (mg *MapGenerator) renderFrame(e *gocgl.Engine) bool {
	e.Image.ApplyColorFilter(FADE_COLOR)
	mg.t = mg.t.Add(10 * time.Second)
	idx := 0
	assetLines := []gocgl.LineZ{}

	for len(mg.segments) > 1 {
		seg := mg.segments[idx]
		idx++
		if !seg[0].tm.Before(mg.t) {
			break
		}
		if outOfBounds(seg) {
			continue
		}
		l := lineFromSegment(seg)
		// if l.Length() > 0.05 {
		// 	continue
		// }

		if seg[0].id == mg.asset {
			assetLines = append(assetLines, l)
			continue
		}

		l.Render(e.Image, COLOR_OTHERS)
	}
	for i := 0; i < len(assetLines); i++ {
		l := assetLines[i]
		l.Render(e.Image, COLOR_WHT)
	}

	mg.segments = mg.segments[idx:]

	if idx >= len(mg.segments) {
		return false
	}

	return true

}
