#include <stdio.h>
#include "asm.h"

long num=25;

int main()
{
	printf("\nNum: %ld.\n",num);
	
	printf("\nAfter Steps: %d.\n",steps());
	
	return 0;
}
