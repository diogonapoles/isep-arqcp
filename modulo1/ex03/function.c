int sum_even( int *p, int num){
	int i =0;
	int sum=0;
	char vec[num];
	for (i = 0; i < num; i++)
	{
		vec[i]= *(p+i);
	}
	
	
	
	for (i = 0; i < num; i++)
	{
		if(vec[i]%2==0){
			sum = sum + vec[i];
		}
		
	}
	return sum;
}
