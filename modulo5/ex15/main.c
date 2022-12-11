#include <stdio.h>
#include <stdlib.h>
#include "asm.h"

int main()
{    
	int* stack=NULL;
	int counter=1;   //counter of the stack
    
    stack=calloc(counter, sizeof(int)); //initialization the stack with 1 element
    
    printf("\n----PUSH----\n");
    //push values
    int x=10;
    int y=20;
    int z=5;
    int w=100;
    
    push(x);
    push(y);    
    push(z);
    push(w);

    printf("\n----STACK----\n");
    printf("%d\n", *(stack));
    printf("%d\n", *(stack+1));
    printf("%d\n", *(stack+2));
    printf("%d\n",*(stack+3));
    printf("%d\n",*(stack+4));
    
    //pop values
    
    printf("\n----POP----\n");
    pop();
    pop();
    pop();
    pop();
    
    printf("\n----STACK----\n");
    printf("%d\n", *(stack));
    
    free(stack);
    
    return 0;
}
