#include <ctype.h>
#include <string.h>

#include "function.h"

#define COMPARAR(C1, C2)    (tolower((C1)) == tolower((C2)))

int palindrome(char *arr){
	
	size_t lenght;
	
	char *i, *j;
	
	lenght = strlen(arr);
	
	i=arr;

	if(lenght==0)
		return 0;
		
	j = arr + lenght - 1;
	
	

	
	while(i<j){
		if (ispunct(*i) || *i==' ')
            i++;
        else if (ispunct(*j) || *j==' ')
            j--;
		else if (!COMPARAR(*i++, *j--))
			return 0;
	}
	return 1;
	
}


 


