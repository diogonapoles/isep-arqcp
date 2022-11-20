#include <string.h>

int distance(char *a, char *b)
{
	int count =0,i;
	
	if (strlen(a) != strlen(b))	
	{
		return -1;
	}
	for (i = 0; (*(a+i))!='\0'; i++) 
	{
		if (*(a+i)!=*(b+i)){			
			count++;
		}
	}
	return count;
}
