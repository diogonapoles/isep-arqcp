#include <stdio.h>
#include "sum_multiples_x.h"

int main(){
	char vec[]= {3,5,11,12,7,4,0};
    int x = 0xf0301;
    int result = sum_multiples_x(vec, x);

	printf("Result of the sum: %d\n", result);

    return 0;
}
