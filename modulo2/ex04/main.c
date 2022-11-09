#include <stdio.h>
#include "asm.h"

int op1=0, op2=0;

int main(void){
	
	printf("Valor op1:");
	scanf("%d",&op1);
	printf("Valor op2:");
	scanf("%d",&op2);
	int soma = sum();
	printf("sum = %d:0x%x\n", soma,soma);
	
	op3=-6, op4=1;
	
	int v2 = sum_v2();
	printf("%d\n",v2);
	
	long v3 = sum_v3();
	printf("ex 04\n");
	printf("%ld\n",v3);
	
	return 0;
}


