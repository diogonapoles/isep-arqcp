#include <stdio.h>
#include "asm.h"

int main() {

	union union_u1{
	char vec[32];
	float a;
	int b;
	} u;

	struct struct_s1{
	char vec[32];
	float a;
	int b;
	} s;
	

	printf("Union %zu\n", sizeof(u));
	printf("Struct %zu\n", sizeof(s));

	printf("Union size of the biggest member, arr with 32 chars\n");
	printf("Struct size of the biggest member (int) and because of all members being able to divide by 4 the size is the sum of all members\n");

	return 0;
}



