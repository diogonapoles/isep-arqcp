#include <stdio.h>
#include <stdlib.h>
#include "asm.h"

int main() {
	
	int y=5;
	int k=4;
	int **m = new_matrix(y,k);
	for (int i = 0; i < y; i++)
	{
		for (int j = 0; j < k; j++)
		{
			m[i][j]= i+j*y+1;
		}
		
	}
	
	printf("number of odd elements = %d\n",count_odd_matrix(m,y,k));
	
	for (int i = 0; i < y; i++)
	{
		free(m[i]);	
	}
	free(m);
	return 0;
}
