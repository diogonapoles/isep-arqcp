# make VARIABLES

INCLUDES = matrix_tools.h
OBJFILES = find_matrix.o new_matrix.o fill_matrix.o main.o
ASSFILE = 
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

	
