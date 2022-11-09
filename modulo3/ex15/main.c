#include <stdio.h>
#include "asm.h"


long array[]={127,127,127,127};
long* ptrvec=array;
int num=4;

int main(void) 
{	
	printf("%d\n",sum_first_byte());
	return 0;
}
