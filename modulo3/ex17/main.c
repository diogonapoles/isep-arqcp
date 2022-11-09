#include <stdio.h>
#include "asm.h"


short array[]={1,4,2};
short* ptrvec=array;
int num=3;

int main(void) 
{	
	int i;
	printf("array : ");
	for (i=0;i<sizeof(array)/2;i++)
	{
		printf("%d ",*(ptrvec+i));
	}
	printf("\n");
	array_sort();
	printf("array : ");
	for (i=0;i<sizeof(array)/2;i++)
	{
		printf("%d ",*(ptrvec+i));
	}
	printf("\n");
	return 0;
}
