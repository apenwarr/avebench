package main

const INNER = 10000
const LOOP = 1*1000*1000

func main() {
  var i int
  aa := new([1000][]byte)
  for i = 0; i < LOOP; i++ {
    aa[i % 1000] = new([INNER]byte)[:]
  }
}
