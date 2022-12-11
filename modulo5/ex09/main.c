#include <stdio.h>
#include "asm.h"

int main() {
	structA sa={.x = 1};
	structB sb = {.a.x = 1, .z =2, .b= &sa };
	
	
	printf("f1 = %hd\n",fun1(&sb));
	printf("f2 = %hd\n",fun2(&sb));
	printf("f3 = %p\n",(void*)fun3(&sb));
	printf("f4 = %hd\n",fun4(&sb));
	
	return 0;
}
