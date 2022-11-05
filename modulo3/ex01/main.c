#include <stdio.h>
#include "asm.h"
	
char str[] = "777";
char *ptr1 = str;

int main() {
	
	printf("Número de '7' em %s: %d\n",str, seven_count());

	return 0;
}
