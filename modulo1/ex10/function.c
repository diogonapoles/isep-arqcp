int odd_sum(int *p)
{
    int sum, i, arraySize;
    sum = 0;
    arraySize = (int)p[0]+1;

    for(i=1; i<arraySize; i++)
    {
        if(p[i]%2==1 || p[i]%2==-1)
            sum=sum+p[i];
    }

    return sum;
}