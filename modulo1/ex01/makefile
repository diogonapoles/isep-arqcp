# A simple Makefile
prog_avg: main.o
	gcc main.o -o prog_avg

main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o prog_avg
run: prog_avg
	./prog_avg
