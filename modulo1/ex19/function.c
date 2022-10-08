#include <stdio.h>
#include <ctype.h>
#include <string.h>

#include "function.h"

#define COMPARAR(C1, C2)    (tolower((C1)) != tolower((C2)))

char* find_word(char* word, char* initial_addr){
	char *a, *b;


    b = word;
    if (*b == 0) 
	{
		return NULL;
    }
    

    for ( ; *initial_addr != '\0'; initial_addr ++) {
		if (*initial_addr != *b) {//procurar um carater em comum, quando for encontrado vamos comparar o resto
			continue; 
		}

		a = initial_addr;
		while (1) {//loop "infinito"
			if (*b == '\0') {//chegar ao fim
				return initial_addr;
			}
			if (COMPARAR(*a++, *b++)){//comparar em lower case
				break; // exit the loop
				
			}
		}
		b = word;
    }
    return NULL;
 
}
  
