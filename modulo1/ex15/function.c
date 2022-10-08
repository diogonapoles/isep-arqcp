#include <stdlib.h>
#include <time.h>
#include <unistd.h>

void populate( int *vec , int num, int limit){
	srand(time(NULL) * getpid());
	
	for(int i = 0 ; i < num ; i++)
    {
      vec[i]= (rand()%(limit-0+1 + 0));
    }
	
	
	
}

