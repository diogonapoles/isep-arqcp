#include <stdio.h>
#include <string.h>
#include "asm.h"



int main() {

	Student s;

	char age = 24;
	short number = 7;
	char name[]="joao";
	char address[]= "Rua penalves 464";
	fill_student(&s,age,number,name,address);

	printf("Age %d\n",s.age);
	printf("Number: %hd \n",s.number);
	printf("Name: %s \n",s.name);
	printf("Adress: %s\n",s.address);

	return 0;
}



