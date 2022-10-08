#include <stdio.h>
#include <string.h>
#include "function.h"

int main () {

char frase1[]= "existe";
char frase2[]= "Sera que existe algo";

char *ap1 = where_exists(frase1,frase2);


printf("\n%s\n",ap1);


return 0;
}