#include <stdio.h>
#include "fill_s2.h"

#define estrutura

int main(){;
    int i;
    char s_c [3] = {1, 2, 3};
    short s_w [3] = {5, 8, 2};
    int s_j = 4;

    s2 structure;                       // define the structure
    s2 *ptr = &structure;                 // save structure in ptr

    fill_s2(ptr, s_w, s_j, s_c);
    
    /**
     * print stuff
    **/
    printf("\nVector of Chars: ");
    for(i = 0; i < 3; i++){
        printf("%d ", ptr->c[i]);
    }
    printf("\nVector of Shorts: ");
    for(i = 0; i < 3; i++){
        printf("%d ", ptr->w[i]);
    }
    printf("\nInteger: %d", ptr->j);
    printf("\n");

    return 0;
}