#include <stdio.h>
#include <string.h>
#include "function.h"

int main () {

char frase1[]= "existe";
char frase2[]= "Sera que existe algo";

char *ap1 = where_exists(frase1,frase2);

printf("String completa: %s\n",frase2);
printf("String para procurar: %s\n",frase1);

printf("Inicio da primeira ocorrencia de (%s), em (%s): %s\n",frase1, frase2, ap1);


return 0;
}