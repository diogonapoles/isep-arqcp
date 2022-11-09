#include <stdio.h>
#include "asm.h"


short array[]={-1,0,1};
short* ptrvec=array;
unsigned short num = 3;



int main(void) 
{	
	keep_positives();
	return 0;
}
