#include <stdio.h>
#include "function.h"

int main() {
    
        char string[] = "HelloWorld";

        printf("String before transformation: ");
        printf("%s", string); 
        printf("\n");
        
        char *str = string; //apontador que aponta para o array
        
        upper1(str);
        
        printf("String after transformation: ");
        printf("%s", string); 
        printf("\n");
        
        return 0;
}