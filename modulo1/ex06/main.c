#include <stdio.h>
#include "function.h"

int main() 
{
    int x = 5;
    int y = 4;
    int *ptr;
    ptr = &x;

    printf("Base = %d, Expoente = %d", x, y);
    printf("\n");

    power_ref(ptr, y);

    printf("Resultado = %d", x);
    printf("\n");

    return 0;
}