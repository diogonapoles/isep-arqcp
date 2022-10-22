void frequencies(float * grades, int n , int * freq) {
	unsigned int i;
    unsigned short int nota;

	for(nota = 0 ; nota <=20; nota ++) {
		for(i = 0; i < n; i++) {
			if((int)(*(grades+i)) == nota) { //comparar a parte inteira de grades com a variavel NOTA
				*freq += 1;
			}  
		}
        freq++;
	}


}