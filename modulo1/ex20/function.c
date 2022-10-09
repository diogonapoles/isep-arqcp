#include <stdio.h>
#include <ctype.h>
#include <string.h>

#include "function.h"

#define COMPARAR(C1, C2)    (tolower((C1)) != tolower((C2)))

void find_all_words(char* str, char* word, char** addrs){
	char *a, *b;


    b = word;
    if (*b == 0) 
	{
		return;
    }
    

    for ( ; *str != '\0'; str ++) {
		if (*str != *b) {//procurar um carater em comum, quando for encontrado vamos comparar o resto
			continue; 
		}

		a = str;
		while (1) {//loop "infinito"
			if (*b == '\0') {//chegar ao fim
				*addrs = a;
				addrs+4; //adicionar 4 para conseguir aceder ao valor a partir de um ciclo for com uma variavel i (tal como foi feito no main)
			}
			if (COMPARAR(*a++, *b++)){//comparar em lower case
				break; // exit the loop
				
			}
		}
		b = word;
    } 
}
  
