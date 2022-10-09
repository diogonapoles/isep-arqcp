void array_sort2(int *vec, int n){
	unsigned int i, j;
    int temp;
	
	
	for (i = 0; i < n; i++) {
        for (j = i + 1; j < n; j++) {
            if (*(vec + j) < *(vec + i)) { //coloca o menor de todo o array na primeira posiçao
                temp = *(vec + i); //apos isso so compara o proximo indice com o resto do array pq o menor ja esta na primeira posiçao
                *(vec + i) = *(vec + j);
                *(vec + j) = temp;
            }
        }
    }
 
}
