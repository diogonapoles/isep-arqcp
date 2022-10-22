#include <stdio.h>
#include <string.h>
#include "function.h"

int main(){
	char* word = "xx";
	char str[] = "rxxX oxxad xxdafxx xx";

	printf("String completa: %s\n",str);
	printf("String para procurar: %s\n",word);

	unsigned int length = strlen(str);

	char* addrs[length];
	
	find_all_words(str,word,addrs);

	printf("\nEndereços encontrados:\n");

	int j;
	while (*addrs[j] != '\0')
	{
		printf("%p\n", addrs[j]);
		j++;
	}

	return 0;
}
