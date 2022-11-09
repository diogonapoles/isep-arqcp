#include <stdio.h>
#include "asm.h"

long array[] = {10,10,10,10,10};
long *ptrvec= array;
short num=5;


int main(void) 
{	
	printf("%ld\n",vec_sum());
	printf("%ld\n",vec_avg());
	return 0;
}

