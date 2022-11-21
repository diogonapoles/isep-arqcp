#include <stdio.h>
#include "asm.h"

int main() {
	
	int a = 0xFFFFF29C; 
	int left = 22;
	int right = 2;
	int activate_result = activate_invert_bits(a, left, right);
	printf("%d\n",activate_result);
	return 0;
}
