#include <string.h>

char* where_exists(char* str1, char * str2)
{
    register char *a, *b;

    b = str1;
    if (*b == 0) 
	{
		return NULL; //caso de nao existir nada em str1
    }

    for ( ; *str2 != 0; str2 += 1) {
		if (*str2 != *b) {//procurar um carater em comum, quando for encontrado vamos comparar o resto de str2
			continue; //voltar para o ciclo "for"
		}

		a = str2;
		while (1) {//loop "infinito"
			if (*b == 0) {
				return str2;
			}
			if (*a++ != *b++) {
				break;
			}
		}
		b = str1;
    }
    return NULL;
}