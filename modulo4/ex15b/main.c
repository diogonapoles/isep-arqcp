#include <stdio.h>
#include "asm.h"

int main() {
	
	int v1=4,v2=3;
	int *ptr=&v1;
	

	printf("Square of %d: %d.\n",v2,inc_and_square(ptr,v2));

	return 0;
}
