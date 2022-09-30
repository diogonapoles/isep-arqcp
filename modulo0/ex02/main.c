#include <stdio.h>
#include <stdlib.h>
#include "function.h"


int main(){
	int result = 0;
do{
	result = sum(rand(),rand());
}while(result<10);
	printf("%d\n",result);


}


