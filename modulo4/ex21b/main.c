#include <stdio.h>
#include "asm.h"

int main() {
	
	char s[5]="abce";
	char s1[5]="abcd";
	char *a = s;
	char *b = s1;
	
	printf("Distance: %d\n",distance(a,b));

	return 0;
}
