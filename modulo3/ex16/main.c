#include <stdio.h>
#include "asm.h"

int num=5;

char vec1[]="teste";
char vec2[]="etset";

char *ptr1=vec1;
char *ptr2=vec2;

int main(){

	printf("\nPre-Swap\n");
	
	printf("Vec1: %s\n", ptr1);
	printf("Vec2: %s\n", ptr2);
	
	swap();
	
	printf("\nPost-Swap\n");
	
	printf("Vec1: %s\n", ptr1);
	printf("Vec2: %s\n", ptr2);
    
	return 0;
}