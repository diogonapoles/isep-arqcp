#include <stdio.h>
#include "asm2.h"
	
short a = 5;

int main() {
	
	printf("Result of call_incr: %d\n", call_incr(a));

	return 0;
}
