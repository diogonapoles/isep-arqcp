# make VARIABLES

INCLUDES = asm1.h asm2.h
OBJFILES = asm1.o asm2.o main.o
ASSFILE = asm1.s asm2.s
PROGRAM = main
# suffix rules
.SUFFIXES : .c .o 
# .c to .o
.c.o:
	gcc -Wall -g -c $<
# .s to .o
.s.o:
	gcc -g -c $< 
main: ${OBJFILES} 
	gcc -Wall ${OBJFILES} -g -o ${PROGRAM} 
${OBJFILES}: ${SOURCES} ${INCLUDES}
run: main
	./main
clean:
	rm -f *.o main

	
