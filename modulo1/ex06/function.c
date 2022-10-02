void power_ref(int* x, int y)
{
    int value = 1;
    int base = *x;

    if (y < 0)
    {
        *x = 0;
        return;
    }
    

    while (y!=0)
    {
        value*=base; 
        --y;
    }
    *x = value;
}