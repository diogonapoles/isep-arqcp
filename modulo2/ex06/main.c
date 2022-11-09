#include <stdio.h>
#include "asm.h"

short s = 0xAABB;
char byte1 = 1, byte2 = 2;

int main(void){
    short res;
    printf("Byte1: %hhx\n", byte1);
    printf("Byte2: %hhx\n", byte2);

    res = concatBytes();
    printf("%hx\n", res);
    
    return 0;
}