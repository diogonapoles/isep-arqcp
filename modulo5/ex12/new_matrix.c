#include <stdio.h>
#include <stdlib.h>
#include "matrix_tools.h"

int **new_matrix(int lines,int columns){
    int i;
    int **a = calloc(lines,sizeof(int*));
    if(a==NULL)
        exit(1);
    for (i = 0; i < lines; i++){
        *(a+i) = calloc(columns , sizeof(int)); 
    if(a[i] == NULL)
        exit (1);
    }


    return a;
}