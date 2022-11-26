#include <stdio.h>
#include "asm.h"
	
int num = 5;

int main() {
	
	printf("The sum of the squares of %d: %ld\n", num, sum_n2(num));

	return 0;
}