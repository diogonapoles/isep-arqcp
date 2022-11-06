#include <stdio.h>
#include "asm.h"

int vec1[] = {101,120,2,4,150};
int num = 5;

int * ptrvec = vec1;

int main()
{
	int i;
	int j;

	printf("Vetor inicial:\n");
	for(i=0;i<num;i++){
		printf("%d ", *(ptrvec+i));
	}
	printf("\n");

	vec_zero();
	
	printf("Vetor final:\n");
	for(j=0;j<num;j++){
		printf("%d ", *(ptrvec+j));
	}
	printf("\n");
	return 0;
}

