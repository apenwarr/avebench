#!/usr/bin/python
import time

INNER = 10000
LOOPS = 1*1000*1000

time.sleep(1)

for i in xrange(LOOPS):
  a = '\0'*INNER
