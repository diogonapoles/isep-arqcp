#include <stdio.h>
#include <stdlib.h>
#include "matrix_tools.h"

int main(){
	int i, j;
  	int num = 8;
    int rows = 5;
    int columns = 17;

    int **a = new_matrix(rows, columns);
    fill_matrix(a, rows, columns);

    int result = find_matrix(a, rows, columns, num);

    printf("Matrix: \n");
    for(i=0; i<rows; i++){
      	for(j=0; j<columns; j++){
        	printf("%d ", a[i][j]);
    	}
    	printf("\n");
  	}
    printf("Result: %d\n", result);

    //free
    for(i=0; i<rows; i++){
		free(*(a+i));
	}
	free(a);

	return 0;
}