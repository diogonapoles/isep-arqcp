#include <stdio.h>
#include "asm.h"

int vec[] = {1,2,3,4,5};
int num = 5;

int* ptrvec = vec;

int main()
{
	int i;
	int j;

	printf("Vetor inicial:\n");
	for(i=0;i<num;i++){
		printf("%d ", *(ptrvec+i));
	}
	printf("\n");

	vec_add_two();
	
	printf("Vetor final:\n");
	for(j=0;j<num;j++){
		printf("%d ", *(ptrvec+j));
	}
	printf("\n");

	return 0;
}
