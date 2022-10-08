#include <stdio.h>
#include "function.h"

int main(){
	int i,counter=0;
	char *str=" c";
	char c ='c';
	int vec[sizeof(str)];
	int *p = vec;

	counter = where_is (str,c,p);

	printf("%d\n",counter);
	for (i = 0; i < counter; i++)
	{
		printf("%d\n",vec[i]);
	}
	
	

	return 0;
}


