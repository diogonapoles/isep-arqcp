void capitalize (char *str){
    
    //verificar o primeiro carater da frase
    if((str[0] >= 65 + 32) && (str[0] <= 90 + 32)) //65+32 significa "a" e 90+32 significa "z" (ver tabela ASCII)
    {
        str[0] = (int)str[0] - 32; //tornar a letra maiúscula (+32)
    }
    str++;

    while(*str != '\0') {
        if(*str == ' ')//verificar se estamos perante um espaço
        {
            str++;//verificar o próximo carater
            if(*str >= 97 && *str <= 122) 
            {
                *str += -32;
            }	
        } 
        str++;
    }
}