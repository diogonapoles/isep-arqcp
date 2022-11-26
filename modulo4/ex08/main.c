#include <stdio.h>
#include "asm.h"
	
int a = 5;
int c = 6;
int vec[1] = {5};
int * b = vec;

int main() {
	
	printf("Result: %d\n", calc(a, b, c));

	return 0;
}
