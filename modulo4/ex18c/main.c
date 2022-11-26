#include <stdio.h>
#include "asm1.h"

int main(){
	int vec[] = {0xFFFF,2305,6120,56182,3691};
    int num = 5;
    int * ptr = vec;
    int j;

	printf("Inicial Values:\n");
	for(j=0;j<num;j++){
		printf("%d ", vec[j]);
	}
	printf("\n");

    changes_vec(ptr, num);

	printf("Final Values:\n");
	for(j=0;j<num;j++){
		printf("%d ", *(ptr+j));
	}
	printf("\n");

    return 0;
}