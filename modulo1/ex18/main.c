#include <stdio.h>
#include "function.h"

int main (){
	short shorts[] = {7,6,9,38,66,10,78,70,88,77,24,35};
	int integers[sizeof(shorts)/sizeof(short)/2];
	
	compress_shorts (shorts, sizeof(shorts)/sizeof(short), integers);
	
	unsigned int i;
	printf("Array de shorts:");
	for (i = 0; i < sizeof(shorts)/sizeof(short); i++){//imprime shorts
		printf("%d ", shorts[i]);
	} 

	unsigned int j;
	printf("\nArray de inteiros como inteiros: ");
	for (j=0; j<sizeof(shorts)/sizeof(short)/2; j++){//imprime inteiros
		printf ("%d ", integers[j]);
	}

	unsigned int k = 0;
	printf("\nArray de inteiros como shorts: ");//imprime inteiros
	short *printint = (short *) integers;
	while (k < sizeof(shorts)/sizeof(short)){
		printf ("%d ", *printint);
		k++;
		printint++;
	}
	printf("\n");
	
	return 0;
}