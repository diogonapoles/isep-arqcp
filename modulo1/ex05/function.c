void upper2(char *str)
{
	while(*str != '\0'){
		if (*str >= 65 + 32 && *str <= 90 + 32){ //65+32 significa "a" e 90+32 significa "z" (ver tabela ASCII)
			*str =(int)*str - 32;
		}
		str++;//proxima posiçao do array
	}
}

