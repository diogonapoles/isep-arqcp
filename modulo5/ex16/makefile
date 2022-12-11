# make VARIABLES

INCLUDES = approved_semester.h
OBJFILES = approved_semester.o main.o
ASSFILE = approved_semester.s
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

	
