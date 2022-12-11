#include <stdio.h>
#include <string.h>

int main( void ){

   struct struct_s1{
        char vec[32];
        float a;
        int b;
    } s;

    struct struct_s1 * ptr = &s; // é definido um apontador para a structure s
    strcpy(ptr->vec, "arquitectura de computadores" );  // é copiada a string "arquitectura de computadores" para o elemento vec de s

    printf( "[1]=%s\n", ptr->vec ); // imprime vec ("arquitectura de computadores"")
    ptr->a = 123.5; // é atribuído 123.5 ao elemento a da struct s
    printf( "[2]=%f\n", ptr->a ); // imprime o float a da struct s
    ptr->b = 2; // é atribuído 2 ao elemento b da struct s
    printf( "[3]=%d\n", ptr->b ); // imprime o inteiro b da struct s
    printf( "[1]=%s\n", ptr->vec );
    printf( "[2]=%f\n", ptr->a );
    printf( "[3]=%d\n", ptr->b );
    return 0;

    /**
     * Nas três primeiras impressões, é impresso "arquitetura de computadores", 
     * seguido de 123.5 e, por fim, é impresso 2
     *
     * Nas 3 últimas impressões, é impresso "arquitetura de computadores", 
     * seguido de 123.5 e, por fim, é impresso 2
     * 
     * Ao contrário de uma union, as structures não partilham a memória.
     * Neste caso particular a structure tem 40 bytes e, deste modo, todos os campos têm o seu valor definido
     *  
    **/
}
