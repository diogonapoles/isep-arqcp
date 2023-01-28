#include <stdio.h>
#include "asm.h"

int A;
short B;
char C, D;


int main(void){
	A=5;
	B=10;
	C=3;
	D=3;
	printf("sum = %ld\n", sum_and_subtract());
	
	
	return 0;
}


