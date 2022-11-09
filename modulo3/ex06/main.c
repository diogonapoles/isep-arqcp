#include <stdio.h>
#include "asm.h"

char vec[] = "Teste Ola";
char * ptr1 = vec;

int main()
{

	printf("String inicial: %s\n", ptr1);

	int counter = encrypt();

	printf("String final: %s\n", ptr1);

	printf("Contador: %d\n", counter);
	
	return 0;
}
