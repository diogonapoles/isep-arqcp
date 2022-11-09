#include <stdio.h>
#include "asm.h"
 
int A=6, B=3; 

int main(void) 
{
	char res = 0;
	printf("Valor A:%d \n",A); 
	printf("Valor B:%d \n",B); 
	if(B != 0)
	{
		res = isMultiple();
		if (res == 1)
		{
			printf("Multiple\n");
		}
		else
		{
			printf("Not multiple\n");
		}
		return 0;
	}
	printf("B can't be zero");
	return 0;
}