package gocgl

import (
	"fmt"
	"os"
	"strings"
)

func ParseObjFile(filename string) Mesh {
	f, err := os.ReadFile(filename)
	if err != nil {
		panic(err)
	}

	m := Mesh{}

	var minx, miny, minz float64 = 100000, 100000, 100000
	var maxx, maxy, maxz float64 = -100000, -100000, -100000
	var xSum, ySum, zSum float64 = 0, 0, 0
	counterV := 0

	for _, line := range strings.Split(string(f), "\n") {
		if line == "" || line[0] != 'v' {
			continue
		}

		var x, y, z float64 = 0, 0, 0
		_, err := fmt.Sscanf(line, "v %f %f %f", &x, &y, &z)
		if err != nil {
			continue
		}

		counterV++
		xSum += x
		ySum += y
		zSum += z

		m.Vertices = append(m.Vertices, PointZ{X: x, Y: y, Z: z})
		if x < minx {
			minx = x
		}
		if y < miny {
			miny = y
		}
		if z < minz {
			minz = z
		}
		if x > maxx {
			maxx = x
		}
		if y > maxy {
			maxy = y
		}
		if z > maxz {
			maxz = z
		}
	}

	midx, midy, midz := (maxx+minx)/2, (maxy+miny)/2, (maxz+minz)/2
	diffx, diffy, diffz := (maxx - minx), (maxy - miny), (maxz - minz)
	maxdiff := max(diffx, max(diffy, diffz))

	fmt.Printf("midx: %f, midy: %f, midz: %f\n", midx, midy, midz)
	for i := range m.Vertices {
		m.Vertices[i].X -= midx
		m.Vertices[i].Y -= midy
		m.Vertices[i].Z -= midz
		m.Vertices[i].X /= maxdiff / 2
		m.Vertices[i].Y /= -maxdiff / 2
		m.Vertices[i].Z /= maxdiff / 2
		m.Vertices[i].Z += 1
	}

	for _, line := range strings.Split(string(f), "\n") {
		if line == "" || line[0] != 'f' {
			continue
		}
		var v1, v2, v3, v4 int
		fmt.Sscanf(line, "f %d %d %d %d", &v1, &v2, &v3, &v4)

		m.Faces = append(m.Faces, [3]int{v1 - 1, v2 - 1, v3 - 1})
		if v4 == 0 {
			continue
		}
		m.Faces = append(m.Faces, [3]int{v1 - 1, v3 - 1, v4 - 1})
	}

	fmt.Printf("minx: %f, miny: %f, minz: %f\n", minx, miny, minz)
	fmt.Printf("maxx: %f, maxy: %f, maxz: %f\n", maxx, maxy, maxz)
	fmt.Printf("Triangles: %d\n", len(m.Faces))

	m.Normals = make([]PointZ, len(m.Vertices))
	return m
}
