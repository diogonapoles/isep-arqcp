#include <stdio.h>
#include <string.h>

int main( void ){

    union union_u1{
        char vec[32];
        float a;
        int b;
    } u;

    union union_u1 * ptr = &u; // é definido um apontador para a union u
    strcpy(ptr->vec, "arquitectura de computadores" );  // é copiada a string "arquitectura de computadores" para o elemento vec de u

    printf( "[1]=%s\n", ptr->vec ); // imprime vec ("arquitectura de computadores"")
    ptr->a = 123.5; // é atribuído 123.5 ao elemento a da union u
    printf( "[2]=%f\n", ptr->a ); // imprime o float a da union u
    ptr->b = 2; // é atribuído 2 ao elemento b da union u
    printf( "[3]=%d\n", ptr->b ); // imprime o inteiro b da union u
    printf( "[1]=%s\n", ptr->vec );
    printf( "[2]=%f\n", ptr->a );
    printf( "[3]=%d\n", ptr->b );
    return 0;

    /**
     * Nas três primeiras impressões, é impresso "arquitetura de computadores", 
     * seguido de 123.5 e, por fim, é impresso 2
     *
     * Como uma union apenas pode conter um e só um único valor ao mesmo tempo,
     * o valor que ela contém é 2, já que esta foi a última atribuição feita.
     *
     * Nas 3 últimas impressões, é impresso o valor 2 em formato STRING, FLOAT e INTEIRO
     * Neste caso particular, esta union tem um tamanho de 32 bits, memória esta partilhada por todos os elementos.
     * Ao atribuir 2 ao campo b, apenas este valor é guardado!
     
     * Como o valor contido na union é 2 e, este é um inteiro, obtiveram-se os seguintes resultados:
     * Na impressão em formato de string: (campo vazio)
     * Na impressão em formato de float: (0.000000)
     * Na impressão em formato de inteiro: (2)  
     *  
    **/
}
