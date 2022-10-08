int main (){
	short shorts[] = { 7, 6,9,38,66,10,78,70,88,77,24,35};
	int integers[sizeof(shorts)/sizeof(short)/2];
	
	compress_shorts (shorts, sizeof(shorts)/sizeof(short), integers);
	
	unsigned int i;
	printf("array de shorts\n");
	for (i = 0; i < sizeof(shorts)/sizeof(short); i++){//imprime shorts
		printf("%d \t", shorts[i]);
	} 

	unsigned int j;
	printf("\narray de inteiros como inteiros\n");
	for (j=0; j<sizeof(shorts)/sizeof(short)/2; j++){//imprime inteiros
		printf ("%d\n", integers[j]);
	}

	unsigned int k = 0;
	printf("\narray inteiros como shorts\n");//imprime inteiros
	short *printint = (short *) integers;
	while (k < sizeof(shorts)/sizeof(short)){
		printf ("%d\n", *printint);
		k++;
		printint++;
	}
	
	return 0;
}