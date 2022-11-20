#include <stdio.h>
#include "asm.h"

int main() {
	
	int v1=4,v2=3,v3=2,v4=1;
	

	printf("Greatest value of %d %d %d %d is %d.\n",v1,v2,v3,v4,greatest(v1,v2,v3,v4));

	return 0;
}
