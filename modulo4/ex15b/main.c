#include <stdio.h>
#include "asm.h"

int main() {
	
	int a = 0xFFFFF29C; 
	int left = 22;
	int right = 2;
	
	printf("%d\n",activate_bits(a,left,right));

	return 0;
}
