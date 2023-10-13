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

	COLOR_CYN_T = 0x7f00ffff

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
}

func parseLines(lines []string) [][2]DataPoint {

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
		dp := DataPoint{lat, lon, date}
		if dataPoints[id] == nil {
			dataPoints[id] = []DataPoint{dp}
		} else {
			dataPoints[id] = append(dataPoints[id], dp)
		}
	}

	for k := range dataPoints {
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
	return segments
}

func outOfBounds(lat, lon float64) bool {
	return lat >= maxLat || lat <= minLat || lon <= minLon || lon >= maxLon
}

func main() {

	contents, err := os.ReadFile("examples/map/locations.csv")

	if err != nil {
		panic(err)
	}

	csv_str := string(contents)
	lines := strings.Split(csv_str, "\n")
	fmt.Println(len(lines))

	fmt.Println("finished reading")

	segments := parseLines(lines)
	minTime := segments[0][0].tm
	maxTime := segments[len(segments)-1][0].tm

	fmt.Printf("minTime: %v, maxTime: %v\n", minTime, maxTime)
	fmt.Printf("duration: %v\n", maxTime.Sub(minTime))
	fmt.Println("finished parsing")

	engine := gocgl.NewEngine(WIDTH, HEIGHT)
	idx := 0
	fmt.Printf("segments: %d\n", len(segments))
	var fadeColor uint32 = 0x0a000000
	timeLimit := minTime
	for handleEvents() {
		engine.Image.ApplyColorFilter(fadeColor)
		timeLimit = timeLimit.Add(1 * time.Minute)
		for {
			if idx >= len(segments) {
				break
			}
			seg := segments[idx]
			if !seg[0].tm.Before(timeLimit) {
				break
			}
			if outOfBounds(seg[0].lat, seg[0].lon) || outOfBounds(seg[1].lat, seg[1].lon) {
				idx++
				continue
			}
			p1 := gocgl.Point{
				Y: ((seg[0].lon-minLon)/(maxLon-minLon) - 0.5) * 2,
				X: ((seg[0].lat-minLat)/(maxLat-minLat) - 0.5) * 2,
			}
			p2 := gocgl.Point{
				Y: ((seg[1].lon-minLon)/(maxLon-minLon) - 0.5) * 2,
				X: ((seg[1].lat-minLat)/(maxLat-minLat) - 0.5) * 2,
			}
			l := gocgl.Line{P1: p1, P2: p2}
			if l.Length() > 0.05 {
				idx++
				continue
			}
			l.Render(engine.Image, COLOR_WHT)
			idx++
		}

		if idx >= len(segments) {
			break
		}
		engine.Render()
	}
}
