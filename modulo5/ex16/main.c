#include <stdio.h>
#include "approved_semester.h"

int main(){
	group a;
	group *b = &a;
	
	short n = 3;
	unsigned short grades[] = {0b1001001010100001,0b1110111011011010,0};
	b->n_students = n;
    b->individual_grades = grades;

	int resultado = approved_semester(b);
	
	printf("\nNumber of Approved Students: %d\n", resultado);
	
	return 0;
}