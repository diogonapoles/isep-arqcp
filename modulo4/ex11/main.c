#include <stdio.h>
#include "asm.h"

int main() {
	
	int a=4, b=5;
	short c = 3;
	char d =2;
	printf("the result is %d\n", call_proc(a,b,c,d));

	return 0;
}
