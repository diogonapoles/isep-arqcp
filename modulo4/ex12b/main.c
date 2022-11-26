#include <stdio.h>
#include "asm.h"

int main(){
	int value = 55;
	
	printf("Number of active bits = %d\n", count_bits_one(value));

    return 0;
}