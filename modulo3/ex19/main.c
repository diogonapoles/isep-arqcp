#include <stdio.h>
#include "asm.h"


/*
char* ptrgrades;
int* ptrfreq;  
int num;
*/

char v[]={1,2,5};
char* ptrgrades=v;
int finalArr[20];
int* ptrfreq= finalArr;
int num=3;


int main(void) 
{	
	frequencies();
	/*
	
	int i;
	printf("v : ");
	for (i=0;i<num;i++)
	{
		printf("%d ",*(ptrgrades+i));
	}
	printf("\n");
	frequencies();
	for (i=0;i<num;i++)
	{
		printf("%d ",*(ptrgrades+i));
	}
	printf("\n");
	printf("\n");
	printf("\n");
	printf("\n");
	printf("v : ");
	for (i=0;i<num;i++)
	{
		printf("%d ",*(ptrfreq+i));
	}
	printf("\n");
	
*/
	return 0;
}
