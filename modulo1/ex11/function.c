#include <ctype.h>
#include <string.h>

#include "function.h"

#define COMPARAR(C1, C2)    (tolower((C1)) != tolower((C2)))

int palindrome(char *arr){
	
	size_t lenght;
	
	char *i, *j;
	
	lenght = strlen(arr);
	
	i=arr;

	if(lenght==0)
		return 0;
		
	j = arr + lenght - 1;//endereço mais a penultima posiçao
	
	

	
	while(i<j){
		if (ispunct(*i) || *i==' ')//verifica se e um espaço ou um ponto
            i++;
        else if (ispunct(*j) || *j==' ')// (else)para que caso identifique que nao um caracter de pontuaçao etc, volte a fazer o ciclo para ver se nao tem dois caracteres espacos ou pontos seguidos por exemplo ", "
            j--;
		else if (COMPARAR(*i++, *j--))// macro para facilitar a leitura e eliminar possiveis erros
			return 0;
	}
	return 1;
	
}


 


