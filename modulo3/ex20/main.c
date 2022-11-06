#include <stdio.h>
#include "asm.h"

int vec[]={1,3,1,5,3};
int * ptrvec = vec;
int num = 5;

int main(){
    int i;

    printf("Vetor:\n");
	for(i = 0; i < num; i++){
		printf("%d ", *(ptrvec + i));
	}
	printf("\n");

    int res;
    res = count_max();

    printf("Numero de vezes que a condicao foi satisfeita: %d\n", res);
    return 0;
}