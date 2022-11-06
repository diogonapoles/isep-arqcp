#include <stdio.h>
#include "asm.h"

char vec1[] = "Tes";
char vec2[] = "te";
char vec3[20];

char * ptr1 = vec1;
char * ptr2 = vec2;
char * ptr3 = vec3;

int main()
{
	printf("String inicial: %s\n", ptr1);
    printf("String final: %s\n", ptr2);
    str_cat();
    printf("String concatenada: %s\n", ptr3);

	return 0;
}
