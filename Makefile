
compile: *.java
	javac *.java

test: compile
	./runtests java MemTest
