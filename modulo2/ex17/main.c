#include <stdio.h>
#include "asm.h"


int op1=-20,op2=5;
int main()
{
	printf("\nOperador1: %d.\n",op1);
	printf("\nOperador2: %d.\n",op2);
	
	printf("\nSoma: %d.\n",sum());
	printf("\nSubtração: %d.\n",subtr());
	printf("\nMultiplicação: %d.\n",multi());
	printf("\nDivisão: %d.\n",divide());
	printf("\nMódulo: %d.\n",modulus());
	printf("\nPower2: %d.\n",power2());
	printf("\nPower3: %d.\n",power3());
	
	
	return 0;
}

