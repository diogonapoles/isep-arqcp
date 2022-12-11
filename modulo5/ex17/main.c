#include <stdio.h>
#include "asm.h"

int main() {
	int i =1, j=2;
	structA sa;
	sa.ub.b=1;

	structA sa1;
	sa1.ub.b=5;

	structA vec1[3]={sa,sa,sa};
	structA vec2[3]={sa,sa,sa1};
	structA vec3[3]={sa,sa,sa};
	structA vec4[3]={sa,sa,sa};

	structA *matrix[4] = {vec1,vec2,vec3,vec4};

	printf("valor = %d\n",return_unionB_b(matrix, i, j));
	return 0;
}
