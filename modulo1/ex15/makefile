# A simple Makefile
prog_avg: function.o function1.o function2.o main.o
	gcc function.o function1.o function2.o main.o -o prog_avg
function.o: function.c
	gcc -g -Wall -c function.c -o function.o
function1.o: function1.c
	gcc -g -Wall -c function1.c -o function1.o
function2.o: function2.c
	gcc -g -Wall -c function2.c -o function2.o
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o prog_avg
run: prog_avg
	./prog_avg

