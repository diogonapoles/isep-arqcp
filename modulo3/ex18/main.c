#include <stdio.h>
#include "asm.h"
#include "asm2.h"


short array[]={1,4,2,4,7,5,20,30};
short* ptrsrc=array;

short array2[8];
short* ptrdest=array2;

int num=8;

int main(void) 
{	
	int i;
	printf("array 1: ");
	for (i=0;i<sizeof(array)/2;i++)
	{
		printf("%d ",*(ptrsrc+i));
	}
	printf("\n");

	sort_without_reps();

	printf("array 2: ");
	for (i=0;i<sizeof(array)/2;i++)
	{
		printf("%d ",*(ptrdest+i));
	}
	printf("\n");
	return 0;
}
