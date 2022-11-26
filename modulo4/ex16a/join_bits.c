#include <stdio.h>

int join_bits(int a, int b, int pos){

	int aux=0, aux2=0;

	aux2 = (1<<pos)-1;		// left shift of 1 to pos and subtracts 1 to the final result: 00000000 00(pos(0))11111
	aux2 = (aux2<<1)+1;		// left shift of aux2 and sums 1 to the final result: 00000000 00(pos(1))11111

	a = (a & aux2);			// saves bits from 0 to pos
	b = (b & (~aux2));		// saves bits from pos+1 until de end

	aux = (a|b);			// concatenate

	return aux;
}
