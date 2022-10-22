#include <stdio.h>
#include "function.h"

int main(){
	int i;
	int arr[]={5,4,3,2,1};
	int *vec=arr;
	int n = (int)sizeof(arr)/sizeof(arr[0]); //tamanho do endereço, por isso dividir por o tamanho da variavel declarada
	array_sort1(vec, n);
	
	for (i = 0; i < n; ++i){
		printf("%d\n", arr[i]);
	}
	
		return 0;
}
