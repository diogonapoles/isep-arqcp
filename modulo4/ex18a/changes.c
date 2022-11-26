#include <stdio.h>

void changes(int *ptr){
    int mask = 0xFF0000;       // 00000000111111110000000000000000
    int n = *ptr;		      // saves pointer value
    
    n = (n >> 8) & 0xff;      // extracts second byte from pointer 

    if(n > 15){
        *ptr = *ptr ^ mask;    // used xor to invert bits
    }
}