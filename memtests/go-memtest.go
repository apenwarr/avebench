package main

import "time"

const INNER = 10000
const LOOP = 1*1000*1000

func main() {
  time.Sleep(1e9)
  var i int
  var a *[INNER]byte
  for i = 0; i < LOOP; i++ {
    a = new([INNER]byte)
    a[0] = 1
  }
}
