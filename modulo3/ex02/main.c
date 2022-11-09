#include <stdio.h>
#include "asm.h"

char str1[] = "Troca trOca";
char str2[12];
char* ptr1 = str1;
char* ptr2 = str2;

int main()
{
	str_copy_porto();
	printf("String 1: %s\n", ptr1);
	printf("String 2: %s\n", ptr2);
	return 0;
}
