package main

import (
	"encoding/json"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
	"sync"
	"time"

	"github.com/veandco/go-sdl2/sdl"
	"github.com/xemotrix/gocgl"
	"golang.org/x/exp/slices"

	proj "github.com/twpayne/go-proj/v10"
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

	MORADUL = 0xff7145d6

	COLOR_OTHERS_BG = 0xff434242
	COLOR_OTHERS    = 0xff696868
	// COLOR_OTHERS   = 0xff9968b8
	COLOR_BG       = 0xff1a1a38
	COLOR_ASSET_BG = 0xffff83c5
	COLOR_ASSET    = 0xffffb3f5
	// COLOR_ASSET    = 0xffffffff

	FADE_FACTOR   = 0.95
	OFFSET_FACTOR = 1.0
	ZOOM_FACTOR   = 4.0

	VIDEO_TIME_S = 30
	FPS          = 30
	N_FRAMES     = VIDEO_TIME_S * FPS

	ASSET_TIME_PER_FRAME = 10 * time.Second
)

type Layer uint8

const (
	LAYER_ROAD Layer = iota
	LAYER_ASSET_PATH
	LAYER_ASSETS
	LAYER_USER_PATH
	LAYER_USER
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

type JourneyJson struct {
	JourneyID   string `json:"journeyid"`
	UserID      string `json:"userid"`
	DriverID    string `json:"driverid"`
	ProductName string `json:"product_name"`
	Polylines   string `json:"polyline_json_string"`
}

type LatLon struct {
	Lat float64
	Lon float64
}
type Journey struct {
	JourneyID   string
	UserID      string
	DriverID    string
	ProductName string
	Polyline    []gocgl.LineZ
}

type BBox struct {
	maxLat float64
	maxLon float64
	minLat float64
	minLon float64
}

func newBBox() BBox {
	return BBox{
		maxLat: -math.MaxFloat64,
		maxLon: -math.MaxFloat64,
		minLat: math.MaxFloat64,
		minLon: math.MaxFloat64,
	}
}
func (b *BBox) mergeBBox(other BBox) {
	b.maxLat = math.Max(b.maxLat, other.maxLat)
	b.maxLon = math.Max(b.maxLon, other.maxLon)
	b.minLat = math.Min(b.minLat, other.minLat)
	b.minLon = math.Min(b.minLon, other.minLon)
}

func parseJourney(js JourneyJson) (*Journey, BBox, int) {
	latlons := [][2]float64{}
	err := json.Unmarshal([]byte(js.Polylines), &latlons)
	if err != nil {
		panic(err)
	}

	/// SUPER HACKY REGION FILTER
	for i := range latlons {
		if latlons[i][1] > -3 {
			return nil, BBox{}, 0
		}
	}

	//reproject
	// for i, latlon := range latlons {
	// 	latlons[i] = toWebMercator(latlon)
	// }

	bbox := newBBox()
	segments := make([]gocgl.LineZ, len(latlons)-1)
	for i := 0; i < len(latlons)-1; i++ {
		if latlons[i][0] > bbox.maxLat {
			bbox.maxLat = latlons[i][0]
		}
		if latlons[i][0] < bbox.minLat {
			bbox.minLat = latlons[i][0]
		}
		if latlons[i][1] > bbox.maxLon {
			bbox.maxLon = latlons[i][1]
		}
		if latlons[i][1] < bbox.minLon {
			bbox.minLon = latlons[i][1]
		}

		if latlons[i][1] > -3 {
			return nil, bbox, 0
		}

		segments[i] = gocgl.LineZ{
			P1: gocgl.PointZ{
				Y: latlons[i][0],
				X: latlons[i][1],
				Z: 1,
			},
			P2: gocgl.PointZ{
				Y: latlons[i+1][0],
				X: latlons[i+1][1],
				Z: 1,
			},
		}
	}
	return &Journey{
		JourneyID:   js.JourneyID,
		UserID:      js.UserID,
		DriverID:    js.DriverID,
		ProductName: js.ProductName,
		Polyline:    segments,
	}, bbox, len(segments)
}

func toWebMercator(latlon [2]float64) [2]float64 {
	lat := latlon[0]
	lon := latlon[1]
	pj, err := proj.NewCRSToCRS("EPSG:4326", "EPSG:3857", nil)
	if err != nil {
		panic(err)
	}
	EPSG4326 := proj.NewCoord(lat, lon, 0, 0)
	EPSG3857, err := pj.Forward(EPSG4326)
	if err != nil {
		panic(err)
	}
	return [2]float64{EPSG3857.Y(), EPSG3857.X()}
}

func normalizeUserJourneys(journeys []Journey, bbox BBox) {
	denom := math.Max(bbox.maxLat-bbox.minLat, bbox.maxLon-bbox.minLon)
	for i := range journeys {
		for j, l := range journeys[i].Polyline {
			journeys[i].Polyline[j].P1.X = ((l.P1.X-bbox.minLon)/denom - (bbox.maxLon-bbox.minLon)/denom/2) * ZOOM_FACTOR
			journeys[i].Polyline[j].P1.Y = -((l.P1.Y-bbox.minLat)/denom-(bbox.maxLat-bbox.minLat)/denom/2)*ZOOM_FACTOR - OFFSET_FACTOR
			journeys[i].Polyline[j].P2.X = ((l.P2.X-bbox.minLon)/denom - (bbox.maxLon-bbox.minLon)/denom/2) * ZOOM_FACTOR
			journeys[i].Polyline[j].P2.Y = -((l.P2.Y-bbox.minLat)/denom-(bbox.maxLat-bbox.minLat)/denom/2)*ZOOM_FACTOR - OFFSET_FACTOR
		}
	}
}

func parseUserJourneys(jsonStr []byte) ([]Journey, BBox, int) {
	var journeysJson []JourneyJson
	err := json.Unmarshal(jsonStr, &journeysJson)
	if err != nil {
		panic(err)
	}
	journeys := make([]Journey, 0)
	generalBBox := newBBox()
	totLines := 0
	for _, j := range journeysJson {
		journeyParsed, bbox, nLines := parseJourney(j)
		if journeyParsed == nil {
			continue
		}
		totLines += nLines
		journeys = append(journeys, *journeyParsed)
		generalBBox.mergeBBox(bbox)
	}

	normalizeUserJourneys(journeys, generalBBox)
	return journeys, generalBBox, totLines
}

type Renderer struct {
	assetLines   []TimedSegment
	journeyLines []JourneyLine
	t            time.Time
	nLines       int
}

type JourneyLine struct {
	Line  gocgl.LineZ
	color uint32
}

func getJourneyLines() ([]JourneyLine, BBox, int) {
	contents, err := os.ReadFile("examples/explorers/journeys_David_2023.json")
	if err != nil {
		panic(err)
	}

	journeys, bbox, totLines := parseUserJourneys(contents)

	rawLines := make([]JourneyLine, 0)
	for _, journey := range journeys {
		for _, line := range journey.Polyline {
			rawLines = append(rawLines, JourneyLine{
				Line:  line,
				color: COLOR_WHT,
			},
			)
		}
	}

	return rawLines, bbox, totLines
}

func main() {
	rawJourneyLines, bbox, totLines := getJourneyLines()
	rawAssetLines, minTime := getAssetLines(bbox)

	renderer := Renderer{
		journeyLines: rawJourneyLines,
		assetLines:   rawAssetLines,
		t:            minTime,
		nLines:       totLines,
	}

	engine := gocgl.NewHeadlessMLEngine(WIDTH, HEIGHT, uint32(TOTAL_LAYERS))
	engine.Layers[LAYER_ROAD].FillWithColor(COLOR_BG)
	var wg sync.WaitGroup
	vch := engine.VideoWriter(".videos/map_mad.mp4", WIDTH, HEIGHT, &wg)
	counter := 0

	ls := []gocgl.LineZ{
		{
			P1: gocgl.PointZ{X: -ZOOM_FACTOR / 2, Y: -ZOOM_FACTOR/2 - OFFSET_FACTOR, Z: 1},
			P2: gocgl.PointZ{X: ZOOM_FACTOR / 2, Y: -ZOOM_FACTOR/2 - OFFSET_FACTOR, Z: 1},
		},
		{
			P1: gocgl.PointZ{X: ZOOM_FACTOR / 2, Y: -ZOOM_FACTOR/2 - OFFSET_FACTOR, Z: 1},
			P2: gocgl.PointZ{X: ZOOM_FACTOR / 2, Y: ZOOM_FACTOR/2 - OFFSET_FACTOR, Z: 1},
		},
		{
			P1: gocgl.PointZ{X: ZOOM_FACTOR / 2, Y: ZOOM_FACTOR/2 - OFFSET_FACTOR, Z: 1},
			P2: gocgl.PointZ{X: -ZOOM_FACTOR / 2, Y: ZOOM_FACTOR/2 - OFFSET_FACTOR, Z: 1},
		},
		{
			P1: gocgl.PointZ{X: -ZOOM_FACTOR / 2, Y: ZOOM_FACTOR/2 - OFFSET_FACTOR, Z: 1},
			P2: gocgl.PointZ{X: -ZOOM_FACTOR / 2, Y: -ZOOM_FACTOR/2 - OFFSET_FACTOR, Z: 1},
		},
	}
	_ = ls

	for handleEvents() {
		goOn := renderer.renderJourneysToFrame(engine)

		if !goOn {
			break
		}
		renderer.renderAssetsToFrame(engine)
		progressBar(&counter, N_FRAMES)

		for _, l := range ls {
			l.RenderWidth(engine.Layers[LAYER_ROAD], COLOR_CYN, 4)
		}

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

func (r *Renderer) renderJourneysToFrame(e *gocgl.MLEngine) bool {
	e.Layers[LAYER_USER].ApplyAlphaReduction(FADE_FACTOR)
	nSegmentsToRender := int(r.nLines / N_FRAMES)

	for i, line := range r.journeyLines {
		if i > nSegmentsToRender {
			r.journeyLines = r.journeyLines[i:]
			return true
		}
		line.Line.RenderWidth(e.Layers[LAYER_USER], line.color, 5)
		line.Line.RenderWidth(e.Layers[LAYER_USER_PATH], COLOR_ASSET_BG, 2)
	}
	return false
}

func (r *Renderer) renderAssetsToFrame(e *gocgl.MLEngine) bool {
	e.Layers[LAYER_ASSETS].ApplyAlphaReduction(FADE_FACTOR)

	r.t = r.t.Add(ASSET_TIME_PER_FRAME)
	idx := 0
	for len(r.assetLines) > 1 {
		seg := r.assetLines[idx]
		idx++
		if !seg.tm.Before(r.t) {
			break
		}
		l := seg.segment
		if lineOutOfBounds(&l) {
			continue
		}
		if l.Length() > 0.05 {
			continue
		}

		l.Render(e.Layers[LAYER_ASSET_PATH], COLOR_OTHERS_BG)
		l.RenderWidth(e.Layers[LAYER_ASSETS], COLOR_OTHERS, 1)
	}

	r.assetLines = r.assetLines[idx:]

	if idx >= len(r.assetLines) {
		return false
	}

	return true
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

/*

	ASSET SECTION

*/

type DataPoint struct {
	lat float64
	lon float64
	tm  time.Time
	id  string
}

type TimedSegment struct {
	segment gocgl.LineZ
	tm      time.Time
}

func getAssetLines(bbox BBox) ([]TimedSegment, time.Time) {
	contents, err := os.ReadFile("examples/explorers/asset_locations_mad.csv")
	if err != nil {
		panic(err)
	}

	csv_str := string(contents)
	lines := strings.Split(csv_str, "\n")
	linesZ, minTime := parseLines(lines, bbox)
	return linesZ, minTime
}

func parseLines(lines []string, bbox BBox) ([]TimedSegment, time.Time) {

	dataPoints := make(map[string][]DataPoint)

	for _, line := range lines[1:] {
		// if i > 50000 {
		// 	break
		// }
		if line == "" {
			continue
		}
		rows := strings.Split(line, ",")
		lat, _ := strconv.ParseFloat(rows[0], 64)
		lon, _ := strconv.ParseFloat(rows[1], 64)

		// projLatLon := toWebMercator([2]float64{lat, lon})
		// lat = projLatLon[0]
		// lon = projLatLon[1]

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

	for k := range dataPoints {
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

	linesZ := make([]TimedSegment, len(segments))
	for i := 0; i < len(segments)-1; i++ {
		l := lineFromSegment(segments[i], bbox)
		linesZ[i] = TimedSegment{
			segment: l,
			tm:      segments[i][0].tm,
		}
	}
	return linesZ, minTime
}

func lineFromSegment(seg [2]DataPoint, bbox BBox) gocgl.LineZ {
	denom := math.Min(bbox.maxLat-bbox.minLat, bbox.maxLon-bbox.minLon)
	p1 := gocgl.PointZ{
		Y: -((seg[0].lat-bbox.minLat)/denom-(bbox.maxLat-bbox.minLat)/denom/2)*ZOOM_FACTOR - OFFSET_FACTOR,
		X: ((seg[0].lon-bbox.minLon)/denom - (bbox.maxLon-bbox.minLon)/denom/2) * ZOOM_FACTOR,
		Z: 1,
	}
	p2 := gocgl.PointZ{
		Y: -((seg[1].lat-bbox.minLat)/denom-(bbox.maxLat-bbox.minLat)/denom/2)*ZOOM_FACTOR - OFFSET_FACTOR,
		X: ((seg[1].lon-bbox.minLon)/denom - (bbox.maxLon-bbox.minLon)/denom/2) * ZOOM_FACTOR,
		Z: 1,
	}
	return gocgl.LineZ{P1: p1, P2: p2}
}
