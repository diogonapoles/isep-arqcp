#include <stdio.h>
#include "function.h"

int main(){
	int i;
	int arr[]={-1,-2,-3};
	int *src=arr;
	int n = (int)sizeof(arr)/sizeof(arr[0]);
	int arr2[n];
	int *dest=arr2;
	
	printf("size %d",sort_without_reps(src, n, dest));//funçao da return ao tamanho 
	printf("\n");
	
	for (i = 0; i < n; ++i){
		printf("%d\n", dest[i]);
	}
	
return 0;
}
