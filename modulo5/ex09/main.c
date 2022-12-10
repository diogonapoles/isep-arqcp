#include <stdio.h>
#include "asm.h"

int main() {

	structB sb;
	
	printf("f1 = %c\n",fun1(&sb));
	fun2(&sb);
	fun3(&sb);
	fun4(&sb);
	return 0;
}
