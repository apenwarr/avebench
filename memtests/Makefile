
compile: *.java *.cs
	javac *.java
	gmcs MemTest.cs
	gmcs MemTest2.cs
	gcc -Wall -o memtest memtest.c
	gcc -Wall -o memtest2 memtest2.c

test: test.csv

test.csv: compile
	rm -f $@ test2.csv $@.new
	./runtests python ./memtest.py >>$@.new
	./runtests jython ./memtest.py >>$@.new
	./runtests pypy ./memtest.py >>$@.new
	./runtests java MemTest >>$@.new
	./runtests java -client MemTest >>$@.new
	./runtests java -XX:+UseConcMarkSweepGC MemTest >>$@.new
	./runtests mono MemTest.exe >>$@.new
	./runtests perl memtest.pl >>$@.new
	./runtests ruby1.8 ./memtest.rb >>$@.new
	./runtests ruby1.9 ./memtest.rb >>$@.new
	./runtests ./memtest >>$@.new
	./runtests valgrind ./memtest >>$@.new
	
	echo >>$@.new
	./runtests python ./memtest2.py >>$@.new
	./runtests jython ./memtest2.py >>$@.new
	./runtests pypy ./memtest2.py >>$@.new
	./runtests java MemTest2 >>$@.new
	./runtests java -client MemTest2 >>$@.new
	./runtests mono MemTest2.exe >>$@.new
	./runtests perl memtest2.pl >>$@.new
	./runtests ruby1.8 ./memtest2.rb >>$@.new
	./runtests ruby1.9 ./memtest2.rb >>$@.new
	./runtests ./memtest2 >>$@.new
	
	mv $@.new $@

clean:
	rm -f *~ .*~ *.class *.new test*.csv *.exe memtest memtest2
