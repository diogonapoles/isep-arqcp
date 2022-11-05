#include <stdio.h>
#include "asm.h"

char str[] = "Ola Porto";
char *ptr1 = str;
char *ptr2 = str;


int main(void) 
{	
	str_copy_porto2();
	
	printf("%s\n",ptr2);
	return 0;
}
