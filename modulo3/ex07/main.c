#include <stdio.h>
#include "asm.h"
	
char str[] = "adda fpt";
char *ptr1 = str;

int main() {
	
	printf("%s\n",str);
	
	encrypt();
	
	printf("%s\n",str);
	
	decrypt();
	
	printf("%s\n",str);
	
	return 0;
}
