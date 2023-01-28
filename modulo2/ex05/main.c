#include <stdio.h>
#include "asm.h"

short s = 43947;

int main(void){
    short sh;

    printf("Signed S: %hd\n", s);
    printf("Unsigned S:%hu\n", s);

    sh = swapBytes();

    printf("Signed Result: %hd\n", sh);
    printf("Unsigned Result: %hu\n", sh);
}