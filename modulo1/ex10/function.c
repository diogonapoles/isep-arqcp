int odd_sum(int *p)
{
    unsigned int i;
    int sum, arraySize;
    sum = 0;
    arraySize = (int)*p+1;
    
    for(i=1; i < arraySize; i++)
    {
        p++;
        if((*p)%2==1 || (*p)%2==-1)
            sum=sum +(*p);
    }
    return sum;
}