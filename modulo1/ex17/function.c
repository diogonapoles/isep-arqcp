

void swap(int* vec1, int* vec2, int size){
	int arr[size];
	int i;
	
	for (i = 0; i < size; i++)
	{
		arr[i]=vec1[i];
	}
	for (i = 0; i < size; i++)
	{
		vec1[i]=vec2[i];
		vec2[i]=arr[i];
	}
	
	
	
}
