#include <stdio.h>
#include "asm.h"

int i=10, j=2;


int main(void) 
{
	printf("I= %d \n",i);
	printf("J= %d \n",j);

	int res1 = f();
	int res2 = f2();
	int res3 = f3();
	int res4 = f4();
	
	printf("Result of F= %d \n", res1);
	
	printf("Result of F2= %d \n", res2);
		
	printf("Result of F3= %d \n", res3);
				
	printf("Result of F4= %d \n", res4);

	return 0;
}

