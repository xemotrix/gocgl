package main

import (
	"fmt"
	"math"
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
	WIDTH  = 16 * FACTOR
	HEIGHT = 9 * FACTOR

	COLOR_BLK = 0xff000000
	COLOR_WHT = 0xffffffff
	COLOR_RED = 0xffff0000
	COLOR_GRN = 0xff00ff00
	COLOR_BLU = 0xff0000ff
	COLOR_YEL = 0xffffff00
	COLOR_CYN = 0xff00ffff
	COLOR_MAG = 0xffff00ff

	COLOR_OTHERS = 0xff2222aa
	FADE_COLOR   = 0x0a000000

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

func lineFromSegment(seg [2]DataPoint) gocgl.LineZ {
	factor := 3.0
	p1 := gocgl.PointZ{
		Y: -((seg[0].lat-minLat)/(maxLat-minLat) - 0.5) * factor,
		X: ((seg[0].lon-minLon)/(maxLon-minLon) - 0.5) * factor,
		Z: 1,
	}
	p2 := gocgl.PointZ{
		Y: -((seg[1].lat-minLat)/(maxLat-minLat) - 0.5) * factor,
		X: ((seg[1].lon-minLon)/(maxLon-minLon) - 0.5) * factor,
		Z: 1,
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

	angle := math.Pi / 2
	// counter := 0
	engine := gocgl.NewEngine(WIDTH, HEIGHT)
	for handleEvents() {
		angle += 0.0003
		goOn := mapGen.renderFrame(engine, angle)
		if !goOn {
			break
		}
		// engine.Image.FillWithColor(COLOR_BLK)

		// l := gocgl.LineZ{
		// 	P1: gocgl.PointZ{X: -0.5, Y: -1, Z: 1},
		// 	P2: gocgl.PointZ{X: 0.5, Y: 1, Z: 1},
		// }
		// l2 := gocgl.LineZ{
		// 	P1: gocgl.PointZ{X: 0.5, Y: -1, Z: 1},
		// 	P2: gocgl.PointZ{X: -0.5, Y: 1, Z: 1},
		// }
		// l3 := gocgl.LineZ{
		// 	P1: gocgl.PointZ{X: -1, Y: 0.5, Z: 1},
		// 	P2: gocgl.PointZ{X: 1, Y: -0.5, Z: 1},
		// }
		// l4 := gocgl.LineZ{
		// 	P1: gocgl.PointZ{X: 1, Y: 0.5, Z: 1},
		// 	P2: gocgl.PointZ{X: -1, Y: -0.5, Z: 1},
		// }
		// l.RenderWidth(engine.Image, COLOR_WHT, 5.0)
		// l2.RenderWidth(engine.Image, COLOR_CYN, 5.0)
		// l.Render(engine.Image, COLOR_BLK)
		// l2.Render(engine.Image, COLOR_BLK)
		// l3.RenderWidth(engine.Image, COLOR_MAG, 5.0)
		// l4.RenderWidth(engine.Image, COLOR_YEL, 5.0)

		engine.Render()
		// engine.Image.WritePPM(fmt.Sprintf("map_frames/out%04d.ppm", counter))
		// counter++
	}
}

func lineOutOfBounds(l *gocgl.LineZ) bool {
	factor := 3.0
	return l.P1.X < -factor || l.P1.X > factor || l.P1.Y < -factor || l.P1.Y > factor ||
		l.P2.X < -factor || l.P2.X > factor || l.P2.Y < -factor || l.P2.Y > factor || l.P1.Z < 0 || l.P2.Z < 0
}

func rotateLine(l *gocgl.LineZ, angle float64) {
	// l.P1.RotateZ(0, 0, angle)
	// l.P2.RotateZ(0, 0, angle)
	// l.P1.RotateX(0, 0.5, -math.Pi/3)
	// l.P2.RotateX(0, 0.5, -math.Pi/3)
	// l.P1.Y -= 0.1
	// l.P2.Y -= 0.1
}

func (mg *MapGenerator) renderFrame(e *gocgl.Engine, angle float64) bool {
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
		l := lineFromSegment(seg)
		if lineOutOfBounds(&l) {
			continue
		}
		if l.Length() > 0.05 {
			continue
		}

		if seg[0].id == mg.asset {
			assetLines = append(assetLines, l)
			continue
		}

		rotateLine(&l, angle)
		l.Render(e.Image, COLOR_OTHERS)
	}
	for i := 0; i < len(assetLines); i++ {
		l := assetLines[i]
		rotateLine(&l, angle)
		l.RenderWidth(e.Image, COLOR_WHT, 5.0)
	}

	mg.segments = mg.segments[idx:]

	if idx >= len(mg.segments) {
		return false
	}

	return true

}
