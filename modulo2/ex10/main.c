#include <stdio.h>
#include "asm.h"
 
int op1=5, op2=6, op3=10;

int main(void) 
{
	long res=0;
	printf("Valor op1:%d \n",op1); 
	printf("Valor op2:%d \n",op2); 
	printf("Valor op3:%d \n",op3);

	res = sum3ints();
	printf("%ld = %d + %d + %d\n", res, op1, op2, op3);
	
	return 0;
}