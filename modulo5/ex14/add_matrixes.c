#include <stdlib.h>
#include "matrix_tools.h"

int **add_matrixes(int ** a, int ** b, int y, int k) {
    int i, j;
    int **result = new_matrix(y, k);
    
    for(i = 0; i < y; i++){
        for(j = 0; j < k; j++){
            *(*(result + i) + j) = *(*(a + i) + j) + *(*(b + i) + j);   // result[i][j] = a[i][j] + b[i][j]
        }
    }

    return result;
}