#include <stdlib.h>
#include <time.h>
#include <unistd.h>

void populate( int *vec , int num, int limit){
	srand(time(NULL) * getpid());//garantir que quando se roda o programa os valores gerados sao diferentes
	
	for(int i = 0 ; i < num ; i++)
    {
      vec[i]= (rand()%(limit-0+1 + 0));// generate random values
    }
	
	
	
}

