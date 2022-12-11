#ifndef ASM_H
#define ASM_H

typedef struct {
	char age;
	short number;
	int grades[5];
	char name[60];
	char address[100];
} Student;

void update_address(Student *s, char *new_address);
void fill_student(Student *s, char age, short number,char *name, char *address);
#endif