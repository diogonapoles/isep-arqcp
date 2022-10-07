void frequencies(float * grades, int n , int * freq) {
	int i;
    int nota;

	for(nota = 0 ; nota <=20; nota ++) {
		for(i = 0; i < n; i++) {
			if((int)(*(grades+i)) == nota) { //queremos obter a parte inteira de grades
				*freq += 1;
			}  
		}
        freq++;
	}


}