#include <stdio.h>
#include "count_bits_one.h"

int main(){
	int value = 55;
	
	printf("Number of active bits = %d\n", count_bits_one(value));

    return 0;
}