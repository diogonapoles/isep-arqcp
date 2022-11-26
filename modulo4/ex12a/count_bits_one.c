#include <stdio.h>

int count_bits_one(int x)
{   
    unsigned int n = (unsigned) x;
    unsigned int count = 0;
    while (n) {
        count += n & 1;
        n >>= 1;
    }
    return count;
}
