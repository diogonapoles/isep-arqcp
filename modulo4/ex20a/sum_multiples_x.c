#include <stdio.h>

int sum_multiples_x(char *vec, int x){
	char num = (char)(x >> 8) & 0xff;      // extracts second byte of vec
	int sum = 0;
	
	while(*vec != 0){
		if (*vec % num == 0){              // verifies if it is multiple
            sum += *vec;	
        }
        vec++;	
	}
	return sum;
}