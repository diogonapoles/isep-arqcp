#include <stdio.h>
#include "asm.h"

int array1[] = {1,10,-1};
int *ptrvec = array1;
int num = 3;

int main() {
	
	int i;
	for(i=0;i<3;i++){
		printf("%d ",array1[i]);}
	
	printf("\nNº maiores que 10: %d\n",vec_greater10());
	
	return 0;
}
