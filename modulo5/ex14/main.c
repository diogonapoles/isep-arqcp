#include <stdio.h>
#include <stdlib.h>
#include "matrix_tools.h"

int main(){
    int i, j;
    int rows = 5;
    int columns = 7;

    int **a = new_matrix(rows, columns);
    int **b = new_matrix(rows, columns);

    fill_matrix(a, rows, columns);
    fill_matrix(b, rows, columns);

    int **result = add_matrixes(a, b, rows, columns);

    printf("Matrix A: \n");
    for(i=0; i<rows; i++){
		for(j=0; j<columns; j++){
			printf("%d ", a[i][j]);
		}
		printf("\n");
	}
    printf("Matrix B: \n");
    for(i=0; i<rows; i++){
		for(j=0; j<columns; j++){
			printf("%d ", b[i][j]);
		}
		printf("\n");
	}
    printf("Result Matrix: \n");
    for(i=0; i<rows; i++){
		for(j=0; j<columns; j++){
			printf("%d ", result[i][j]);
		}
		printf("\n");
	}

    //free
    for(i=0; i<rows; i++){
		free(*(a+i));
		free(*(b+i));
		free(*(result+i));
	}
	free(a);
	free(b);
	free(result);

	return 0;
}