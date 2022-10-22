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
	
	for (arr=vec; arr < vec+num-2; arr++)// -2 porque ele compara 3 elementos e quando chegar ao antepenultimo ja faz a comparaçao ate ao ultimo
	{
		if(check(*arr,*(arr+1),*(arr+2))){
			inc_nsets();
		}
	}

	printf("%d\n", nsets);

	return 0;
}

