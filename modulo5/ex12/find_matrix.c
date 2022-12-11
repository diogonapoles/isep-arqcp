#include <stdlib.h>
#include "matrix_tools.h"

int find_matrix(int ** m, int y, int k, int num){
    int i, j;

	for(i=0; i<y; i++){
		for(j=0; j<k; j++){
			if(*(*(m+i)+j) == num){		// m[i][j]
				return 1;
			}
		}
	}
    return 0;
}
