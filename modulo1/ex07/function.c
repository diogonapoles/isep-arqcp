void array_sort1(int *vec, int n){
	int i, j, temp;
	
	
	for (i = 0; i < n; ++i) {
		for (j = i + 1; j < n; ++j){
			if (vec[i] > vec[j]) { //coloca o menor de todo o array na primeira posiçao
				temp =  vec[i];    //apos isso so compara o proximo indice com o resto do array pq o menor ja esta na primeira posiçao
				vec[i] = vec[j];
				vec[j] = temp;
			}
		}
	
	
	
	}
}
