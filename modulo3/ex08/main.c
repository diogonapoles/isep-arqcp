#include <stdio.h>
#include "asm1.h"
#include "asm2.h"

long vec[] = {4, 40, 23}; 
long * ptrvec = vec;
int num = 3;
long even = 10;

int main(void) {
	int i;
    long result;
	result = vec_sum_even();

    printf("Array:\n");
	for(i = 0; i < num; i++){
		printf("%ld \n", vec[i]);
	}
	printf("Sum of Even Elements: %ld\n", result);

	return 0;
}
