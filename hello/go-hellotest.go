package main

import "os"

func main() {
  f, _ := os.Open("hello.txt")
  var buf [102400]byte
  len, _ := f.Read(buf[:])
  os.Stdout.Write(buf[:len])
  f.Close()
}
