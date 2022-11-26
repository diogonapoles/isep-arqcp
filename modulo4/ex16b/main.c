#include <stdio.h>
#include "asm.h"

int main(){
	int a = 25;
    int b = 233;
    int pos = 5;

	printf("A = %d | B = %d | Position = %d\nResult: %d\n", a, b, pos, join_bits(a, b, pos));

    return 0;
}