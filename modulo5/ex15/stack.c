#include <stdio.h>
#include <stdlib.h>

int* stack=NULL;
int counter=1;   //counter of the stack


void push(int inputvalue)
{
    
    int *stack_temp=NULL;
    counter++;                                               //number of elements in the stack    
    stack_temp=(int*)realloc(stack,sizeof(int)*counter);     //increase the size of the stack
    counter--;                                                //decrease counter because *(stack + counter)=inputvalue (line22)
    
    if(stack_temp !=NULL)
    {
        stack=stack_temp;
        stack_temp=NULL;            
    }
    
    *(stack + counter)=inputvalue;               //push inputvalue to the stack    
    counter++;                                   //number of elements in the stack
    
    printf("Push %d\n",inputvalue);
}

void pop()
{
    int popvalue=0;
    int *stack_temp=NULL;
    counter--;
    
    if(counter != 0)
    {
        popvalue=*(stack+counter);  //i=value on the top of the stack
    }
    
    stack_temp=(int*)realloc(stack,sizeof(int)*counter); //decrease the size of the stack
    
    if(stack_temp !=NULL)
    {
        stack=stack_temp;
        stack_temp=NULL;
    }
    
    printf("Pop %d\n",popvalue);
}

int main()
{    
    
    //The difference in malloc and calloc is that malloc does not set the memory to zero 
    //where as calloc sets allocated memory to zero.
    
    
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