#include <stdio.h>
#include "function.h"
#include "function1.h"
#include "function2.h"

extern int nsets;

int main(){
	int i;
	const int num=100;
	const int limit=20;
	int vec[num];
	const int *arr;
	
	populate(vec,num,limit);
	
	arr=vec;
	
	
	for (i = 0; i < num; i++)
	{
		printf("%d,",vec[i]);
	}
	printf("\n");
	
	for (arr=vec; arr < vec+num-2; arr++)
	{
		if(check(*arr,*(arr+1),*(arr+2))){
			inc_nsets();
		}
	}
	/*for (i = 0; i < num-2; i++)
	{
		if (check(vec[i],vec[i+1],vec[i+2]))
		{
			inc_nsets();
		}
	}
	*/
	printf("%d\n", nsets -1);
	

	return 0;
}

