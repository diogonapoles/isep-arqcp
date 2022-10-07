#include <stdio.h>
#include "function.h"

int main() {
        char string[] = "teste de Capitalizacao";
        char *str = string; //apontador que aponta para o array

        printf("String before transformation: ");
        printf("%s", string); 
        printf("\n");
        
        capitalize (str);

        printf("String after transformation: ");
        printf("%s", string); 
        printf("\n");
        
        return 0;
}