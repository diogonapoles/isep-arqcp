#include <stdio.h>
#include "asm.h"

int main() {
	
	char x =0;
	int vector1[1] = {0};
	int vector2[]={};
	int *vec1 = vector1;
	int *vec2 = vector2;
	

	add_byte(x,vec1,vec2);			//void function

	return 0;
}
