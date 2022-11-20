#include <stdio.h>
#include "asm.h"

int main() {
	
	int n=4;
	char vetor[4] = {1,2,3,4};
	char *ptr=vetor;
	

	printf(" number of odd elementes of vetor is %d.\n",count_odd(ptr,n));

	return 0;
}
