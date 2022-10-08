#include <stdio.h>
#include "function.h"

int main(){
    int vec1[]={1,2,3,4,5,6,7,8};
    int vec2[8]={0};
    int n = sizeof(vec1)/sizeof(vec1[0]);

    copy_vec(vec1, vec2, n);

    printf("Array 1: ");
    unsigned short int i; //i tem que ser sempre menor que 255, caso contrario temos que retirar o "short"
    for (i = 0; i < n; i++) {     
        printf("%d, ", vec1[i]);     
    }     
    printf("\n");

    printf("Array 2 (copy of array 1): ");
    unsigned short int j;
    for (j = 0; j < n; j++) {     
        printf("%d, ", vec2[j]);     
    }    
    printf("\n"); 

    return 0; 
}