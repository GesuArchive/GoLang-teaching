//
package main

import "fmt"

/*
var i int
i = 8
var i int = 8
var i, j = 8, 42
*/

var i, j int = 8, 42

var (
	x      int     = 42
	y      float32 = 1.37
	name   string  = "James Кэмерон"
	online bool    = true
)

/*
func var_define() {
	i := 8
	x, y := 10, 5
}
*/

const pi float32 = 3.14

func main() {
	fmt.Println("i:", i)
	fmt.Println("j:", j)

	fmt.Println("name:", name)
	fmt.Println("x:", x)
	fmt.Println("y:", y)
	fmt.Println("online:", online)

	fmt.Println("pi:", pi)

	fmt.Println("---")
	//

	x := 42
	y := 8
	fmt.Println("x:", x, "y:", y)

	res := x + y
	fmt.Println("+:", res) // output: 50
	res = x - y
	fmt.Println("-:", res) // output: 34
	res = x * y
	fmt.Println("*:", res) // output: 336
	res = x / y
	fmt.Println("/:", res) // output: 5
	res = x % y
	fmt.Println("%:", res) // output: 2

	str1 := "hello "
	str2 := "world"
	fmt.Println("п + м:", str1+str2)

	xx := 42
	yy := 8
	println("xx:", xx, "yy:", yy)

	xx += yy
	fmt.Println("xx:", xx) // output: 50
	xx *= yy
	fmt.Println("xx:", xx) // output: 400

	xx, yy = yy, xx // swaps
	println("xx:", xx, "yy:", yy)

	fmt.Println(x == y) // output: false
	fmt.Println(x != y) // output: true
	fmt.Println(x > y)  // output: true
	fmt.Println(x < y)  // output: false
}
