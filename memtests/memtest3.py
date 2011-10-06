#!/usr/bin/python
import time

INNER = 10000
LOOPS = 1*1000*1000

time.sleep(1)

aa = {}
for i in xrange(LOOPS):
  a = ['\0'*INNER, None]
  b = ['\0'*INNER, a]
  a[1] = b
  aa[i % 1000] = a
