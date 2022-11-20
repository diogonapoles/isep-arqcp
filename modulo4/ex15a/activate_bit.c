#include <stdio.h>
#include "asm.h"

int activate_bits(int a, int left, int right) {


  int c=31; 				// Inicialiar o contador com o n de bits de um int(0..31)
  int masc =0; 				// mascara inicializada a 0


  while (c>=0){ 			// contar de 31 ate 0 para ter uma masc de de 32 bits
    masc = masc << 1; 		// na primeira iteraçao a mascara é igual a zeros, dapos a primeira it, na segunda iteraçao tera 0000...0010
    if(c>left||c<right){ 	// o "if " serve para verificar quantos bits a direita ou a esquerda e que pretendo ativar
      masc += 1;			// se o if for ativado, o bit menos significativo sempre é posto a 1 

    }
    c--;
		
  }
	return masc | a; 		// using or to activate bits
}

