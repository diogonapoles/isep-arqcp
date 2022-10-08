void compress_shorts(short *shorts, int n_shorts, int *integers){
	short *aux = (short *) integers;
	unsigned int i;
	for (i = 0; i < n_shorts; i++){
		*aux = *shorts;
		aux++;
		shorts++;
	}
}
