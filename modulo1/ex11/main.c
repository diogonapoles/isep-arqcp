#include <stdio.h>
#include "function.h"

int main(){
	int i,lenght=0;
	char str[] = "Never odd or even.";


	while(str[lenght]!='\0'){
		lenght++;
	}
	

	char arr[lenght+1];
	
	for (i = 0; i < lenght; i++)
	{
		arr[i]=str[i];
	}
	arr[lenght]=0;//para saber onde terminar
	
	
	if (palindrome(arr)) //porque o retorno da funçao ou é 1 se for verdadeiro ou 0 se falso
	{
		printf("palindrome\n");
	}else{
		printf("!palindrome\n");
	}	
}
