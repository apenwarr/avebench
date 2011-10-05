
compile: *.java *.cs
	javac *.java
	gmcs MemTest.cs
	gmcs MemTest2.cs

test: test.csv

test.csv: compile
	rm -f $@ $@.new
	#./runtests java MemTest >>$@.new
	#./runtests java -client MemTest >>$@.new
	#./runtests python ./memtest.py >>$@.new
	#./runtests java -XX:+UseConcMarkSweepGC MemTest >>$@.new
	#./runtests java -client MemTest >>$@.new
	#./runtests java -client MemTest2 >>$@.new
	#./runtests mono MemTest.exe >>$@.new
	#./runtests mono MemTest2.exe >>$@.new
	./runtests perl memtest.pl >>$@.new
	./runtests perl memtest2.pl >>$@.new
	mv $@.new $@

clean:
	rm -f *~ .*~ *.class test.csv *.exe
