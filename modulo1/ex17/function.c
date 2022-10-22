

void swap(int* vec1, int* vec2, int size){
	int arr[size];
	int i;
	
	for (i = 0; i < size; i++)
	{
		arr[i]=vec1[i];//copiado para um array auxiliar
	}
	for (i = 0; i < size; i++)
	{
		vec1[i]=vec2[i]; //o segundo array e copiado para o primeiro
		vec2[i]=arr[i];  //o conteudo do array auxiliar e copiado para o segundo 
	}
	
	
	
}
