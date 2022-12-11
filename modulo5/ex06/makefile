# make VARIABLES

INCLUDES = student.h
OBJFILES = locate_greater.o main.o
ASSFILE = locate_greater.s
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

	
