#include <stdio.h>


int sort_without_reps(int *src, int n, int *dest){
	int i, j, temp;
	int count=0;
	int arr[n];
	
	for (i = 0; i <= n; i++)
	{
		arr[i]=src[i];
	}
	
	
	
	for (i = 0; i < n; ++i) {
		for (j = i + 1; j < n; ++j){
			if (arr[i] > arr[j]) { //coloca o menor de todo o array na primeira posiçao
				temp =  arr[i];    //apos isso so compara o proximo indice com o resto do array pq o menor ja esta na primeira posiçao
				arr[i] = arr[j];
				arr[j] = temp;
			}
		}
	}
	
	dest[0]=arr[0];
	for (i = 1; i < n; i++)
	{
		if (arr[i]==arr[i-1])
		{
			count++;
			continue;
		
		}
		dest[i-count]=arr[i];
		
	}
	
	return n-count;	
}
