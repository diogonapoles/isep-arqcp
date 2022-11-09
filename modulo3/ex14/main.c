#include <stdio.h>
#include "asm1.h"
#include "asm2.h"

int x=1;
int num=3;
int vec[]={1,2,1};
int * ptrvec=vec;

int main(){
	int res;

	res=exists();

	if(res==1){
		printf("\nX exists in vec.\n");
	}
	else{
		printf("\nX doesn't exist in vec.\n");
	}
	
	printf("\nAmount of numbers different from X in vec: %d\n", vec_diff());
	
	return 0;
}