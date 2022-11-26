#include <stdio.h>
#include "asm1.h"

int main(){
	int num = 3;
	short vec[3] = {2,6,10};
	short * ptr = vec;
	
	printf("Number of active bits = %d\n", vec_count_bits_one(ptr, num));

    return 0;
}