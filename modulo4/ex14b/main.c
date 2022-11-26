#include <stdio.h>
#include "asm.h"

int main(){
	int vec[1] = {240};
	int num = vec[0];
	int * ptr = vec;
	int pos = 6;
	int result = reset_bit(ptr, pos);

	if(result == 1){
		printf("The bit in position %d, in the number %d, was altered. Final result: %d\n", pos, num, *ptr);
	}else{
		printf("The bit in position %d, in the number %d, was not altered.\n", pos, num);
	}

    return 0;
}