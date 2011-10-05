INNER = 10000
LOOPS = 1*1000*1000

sleep 1

aa = {}
for i in (0..LOOPS-1)
  a = '\0'*INNER
  aa[i % 1000] = a
end
