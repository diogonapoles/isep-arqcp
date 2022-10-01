#include <stdio.h>
#include "function.h"

int main() {
    
        char string[] = "HelloWorld";
        int arr_size = sizeof(string) / sizeof(string[0]);


        printf("String before transformation: ");
        int i;
        for (i= 0; i< arr_size; i++) {
            printf("%c", string[i]); //prints array information
        } 
        printf("\n");
        
        char *str = string; //pointer that points to the array
        
        uppercase(str, arr_size);
        
        printf("String after transformation: ");
        printf("%s", string); //prints array information
        printf("\n");
        
        return 0;
}