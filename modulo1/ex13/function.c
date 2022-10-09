int where_is (char *str, char c, int *p){
	int count=0;
	char *test;
		
	
	for (test=str; *test != '\0'; test++)// endereço onde str começa
	{
		if (*test==c)// se o caracter é igual ao dado como parametro
		{
			p[count] = (int)(test-str);//array é preenchido com a posiçao em que foi encontrado 
			count++;
		}
	}

	return count;
}
