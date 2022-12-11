# include <stdlib.h>
#include <string.h>

char *new_str(char str[80]){
    int i;
    int size = strlen(str);

    char *new_str = (char *) malloc((size+1) * sizeof(char)); 

    for (i=0; i < size; i++){
		new_str[i] = str[i];
	}

    return new_str;
}

/**
     * Why it is possible: Basicamente vamos retornar o apontador para uma nova string, 
     * mais especificamente, para o seu primeiro caracter
    **/