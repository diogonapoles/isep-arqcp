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
void update_grades(Student *s, int *new_grades);
void fill_student(Student *s, char age, short number,char *name, char *address);
int locate_greater(Student *s, int minimum, int *greater_grades);
#endif