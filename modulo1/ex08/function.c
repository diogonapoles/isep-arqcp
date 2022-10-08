void array_sort2(int *vec, int n){
	unsigned int i, j;
    int temp;
	
	
	for (i = 0; i < n; i++) {
        for (j = i + 1; j < n; j++) {
            if (*(vec + j) < *(vec + i)) {
                temp = *(vec + i);
                *(vec + i) = *(vec + j);
                *(vec + j) = temp;
            }
        }
    }
 
}
