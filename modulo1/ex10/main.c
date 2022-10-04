#include <stdio.h>
#include "function.h"

int main() 
{
    int vec1[]={7,2,3,10,5,6,7,1};
    int *ptr;
    ptr = vec1;

    int result, arraySize;
    result = (int)odd_sum(ptr);
    arraySize = (int)vec1[0]+1;

    printf("Array: ");
        int i;
        for (i = 0; i < arraySize; i++) {     
            printf("%d ", vec1[i]);     
        }     
    printf("|| Soma dos valores impares = %d", result);
    printf("\n");

    return 0;
}