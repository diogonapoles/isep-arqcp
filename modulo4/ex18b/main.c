#include <stdio.h>
#include "asm.h"

int main(){
	int vec[1]= {0xFFFF};
    int num = vec[0];
    int * ptr = vec;
    changes(ptr);

	printf("Inicial Value: %d\nFinal Value: %d\n", num, *ptr);

    return 0;
}