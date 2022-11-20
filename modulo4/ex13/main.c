#include <stdio.h>
#include "asm.h"

int main(int argc, char **argv) {
	int num=1;
	int nbits=3;
	printf("Rotate left: %d\n", rotate_left(num,nbits));
	printf("Rotate right: %d\n", rotate_right(num, nbits));
	
	return 0;
}





