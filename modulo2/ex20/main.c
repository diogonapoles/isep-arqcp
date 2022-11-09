#include <stdio.h>
#include "asm.h"

int num=-3;

int main(void) 
{
	char res;
	res=check_num();
	printf("Result=  %d \n",res);

	return 0;
}
