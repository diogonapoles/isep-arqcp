#include <stdio.h>
#include "function.h"

int main(){
	int vec[]={1,2,3,5,7,9,8,10};
	int *ptr=vec;
	int sum=0;
	sum = sum_even(ptr,sizeof(vec)/sizeof(vec[0]));
	printf("the sum is %d\n",sum);
}
	



