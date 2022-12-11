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

