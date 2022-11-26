#include <stdio.h>
#include "asm.h"
	
int num1 = 5;
int num2 = 10;
int vec[] = {};
int *ptr = vec;

int main() {
	
	int result = sum_smaller(num1, num2, ptr);
	printf("Sum of %d and %d: %d || Smaller: %d\n", num1, num2, result, *ptr);

	return 0;
}
