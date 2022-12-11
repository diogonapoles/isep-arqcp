#include <stdio.h>
#include <stdlib.h>
#include "new_str.h"

int main(){
    char str[80] = "Test of String";
    char *new_s = new_str(str);

    printf("\nOld: %s\nNew: %s\n", str, new_s);

    free(new_s);
    return 0;
}