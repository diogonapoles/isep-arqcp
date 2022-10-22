#include <stdio.h>

int main(){

int x = 5;
int *xPtr = &x;
float y = *xPtr + 3;
int vec[] = {10, 11, 12, 13};
char i =0;

printf("value x\n");
printf("%d\n",x);
printf("value y\n");
printf("%.2f\n",y);

printf("address hex x\n");
printf("%px\n",&x);
printf("address hex xptr\n");
printf("%px\n",&xPtr);

printf("value pointed by xptr\n");
printf("%d\n",*xPtr);

printf("address vec\n");
printf("%p\n",&vec);

for (i = 0; i < 4; i++)
{
	printf("value of vec %d\n",i);
	printf("%d\n",vec[i]);
}

for (i = 0; i < 4; i++)
{
	printf("address of vec %d\n",i);
	printf("%p\n",&vec[i]);
}

//a)
//b) cada um tem disponiveis 4 bytes e podemos ver os addresses diferem de 4 bytes entre eles
//c) addresses diferentes pois depende do layout da memoria, arquitetura etc

}
