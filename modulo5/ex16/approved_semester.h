typedef struct{
    short n_students;
    unsigned short *individual_grades;
}group;

int approved_semester(group *g);
unsigned int get_set_bits(unsigned short n);