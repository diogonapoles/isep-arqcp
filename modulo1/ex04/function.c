void upper1(char *str)
{
    unsigned int i; //tambem posso usar unsigned short int! mas precisaria de ter a garantia que a variavel i nao iria ultrapassar i=255
    for (i = 0; str[i] != '\0'; i++)
    {
            if (str[i] >= 65 + 32 && str[i] <= 90 + 32) //65+32 significa "a" e 90+32 significa "z" (ver tabela ASCII)
                    str[i] =(int)str[i] - 32;
    }
}