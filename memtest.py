#!/usr/bin/python
import time

INNER = 10000
LOOPS = 10000*1000

time.sleep(1)

l = []
for i in xrange(LOOPS):
  b = '\0'*INNER
