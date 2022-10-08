int where_is (char *str, char c, int *p){
	int countC=0;
	char *test;
		
	
	for (test=str; *test != '\0'; test++)
	{
		if (*test==c)
		{
			p[countC++] = (int)(test-str);
		}
	}

	return countC;
}
