void power_ref(int* x, int y)
{
    int value = 1;
    int base = *x;

    if (y < 0)
    {//para o caso de o valor de y ser negativo (torna o valor aproximado de zero!)
        *x = 0;
        return;
    }
    

    while (y!=0)
    {
        value*=base; 
        --y;//reduz constantemente o valor do expoente
    }
    *x = value;
}