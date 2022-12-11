#include <stdio.h>
#include "student.h"

int main() {

	Student s;

	char age = 24;
	short number = 7;
	char name[]="joao";
	char address[]= "Rua penalves 464";
	fill_student(&s,age,number,name,address);

	printf("Old Address: %s\n",s.address);
    
    update_address(&s, "endereço atualizado");

    printf("New Address: %s\n",s.address);

	return 0;
}