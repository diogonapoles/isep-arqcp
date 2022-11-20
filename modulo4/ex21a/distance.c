#include <string.h>

int distance(char *a, char *b)
{
	int count =0,i;
	
	if (strlen(a) != strlen(b))			//same size
	{
		return -1;
	}
	for (i = 0; (*(a+i))!='\0'; i++) 	//end of string
	{
		if (*(a+i)!=*(b+i)){			//char at i position
			count++;
		}
	}
	return count;
}
