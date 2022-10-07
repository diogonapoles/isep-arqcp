#include <stdio.h>
#include "function.h"


int main ()
{
float vec[] = {8.23, 12.25, 16.45, 12.45, 10.05, 6.45, 14.45, 0.0, 12.67, 16.23, 18.75};
float *grades = vec;

int freq[20];
int *absfreq = freq;

int lengthvec= sizeof(vec)/sizeof(vec[0]);

int i;
for(i=0; i <= 20; i++) { //preencher com zeros
	freq[i] = 0;
}

frequencies(grades,lengthvec,absfreq);

int print;
for(print = 0 ; print<= 20 ; print++) 
{
    printf("%d, ",freq[print]);
}

return 0;
}
