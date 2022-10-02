# A simple Makefile
prog_avg: function.o main.o
	gcc function.o main.o -o prog_avg
function.o: function.c
	gcc -g -Wall -c function.c -o function.o
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o prog_avg
run: prog_avg
	./prog_avg