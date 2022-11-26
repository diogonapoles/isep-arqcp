#include <stdio.h>
#include "asm.h"
	
char a[] = "teste";
char b[] = "teste";

int main() {
	
	int result = test_equal(a, b);

	if(result == 1){
		printf("The strings are equal\n");
	}else{
		printf("The strings are different\n");
	}

	return 0;
}
