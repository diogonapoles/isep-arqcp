#include <stdio.h>
#include "asm.h"

int main() {
	int vi=4;
	char vc=2;
	int vj=5;
	char vd=3;
	s1 student;

	fill_s1(&student,vi, vc, vj, vd);
	printf("c = %hhd, d = %d, i = %hhd, j = %d\n",student.c,student.d, student.i,student.j);

	return 0;
}
