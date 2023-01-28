#include <stdio.h>
#include "asm.h"

int op1,op2;


int main(void){
	op1=1;
	op2=0x7fffffff;
	if(test_flags())
		printf("activated\n");
	else
		printf("not activated\n");
		
	
	return 0;
}

