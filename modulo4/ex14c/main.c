#include <stdio.h>
#include "asm1.h"

int main(){
	int vec[1] = {65535};
	int num = vec[0];
	int * ptr = vec;
	int pos = 6;
	reset_2bits(ptr, pos);

	printf("Inicial value: %d. Value after bit operations: %d\n", num, *ptr);

    return 0;
}