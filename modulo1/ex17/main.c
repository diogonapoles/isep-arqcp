#include <stdio.h>
#include "function.h"


int main(){
	int i;
	char size = 6;
	
	int vec1[size];
	int vec2[size];
	
	
	for (i = 0; i < size; i++)
	{
		vec1[i]=1+i; //preencher os arrays para testes
		vec2[i]=3+i;
	}
	
	
	swap(vec1,vec2,size);
	
	
	for (i = 0; i < size; i++)
	{
		printf("%d",vec1[i]);
		
	}
	printf("\n");
	
	for (i = 0; i < size; i++)
	{
		printf("%d",vec2[i]);
	}
	printf("\n");

	

	return 0;
}

