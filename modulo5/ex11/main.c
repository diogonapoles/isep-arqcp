#include <stdio.h>
#include "asm.h"

int main() {
	
	int lines =2;
	int columns = 3;
	printf("Address = %p\n",(void*)new_matrix(lines,columns));

	
	return 0;
}
