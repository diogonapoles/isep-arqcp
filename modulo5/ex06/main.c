#include <stdio.h>
#include <string.h>
#include "student.h"

int main( void ){
	int i;
	Student s;
	
	s.age = 23;
	s.number=27;
	strcpy(s.name, "Diogo");
	strcpy(s.address, "Porto");
	
	int grades[]={7,3,2,14,12};
	for(i = 0; i < 5; i++){
		s.grades[i] = grades[i];
	}

	int best_grades[5];
	int * b_gr = best_grades;
	int result = locate_greater(&s, 5, b_gr);
	
	printf("Number of grades better than 5 = %d\n", result);

	return 0;
}