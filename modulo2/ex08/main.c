#include <stdio.h>
#include "asm.h"

int main(int argc, char **argv)
{
	short res;
    res = crossSumBytes();
	printf("%hd\n", res);
	return 0;
}