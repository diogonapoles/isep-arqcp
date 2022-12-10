#include <stdio.h>
#include "asm.h"

int main() {
	Student s1;
	int grades[5]={1,3,3,2,1};
	int *new_grades = grades;
	
	update_grades(&s1,new_grades);

	for (int i = 0; i < 5; i++)
	{
		printf("ola\n");
		//printf("%d valor = ",s1.grades[i]);
	}
	

	return 0;
}
