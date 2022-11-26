#include <stdio.h>

int reset_bit(int *ptr, int pos){
	int num = *ptr;
	
    *ptr &= ~(1 << pos);
	
	if (*ptr == num){
       return 0; 
    }
	return 1;
}