#include <stdio.h>

int main(void) {
    char nome[100];    
    char apelido[100]; 
    // -- scanf()
    
    printf("Introduza o seu nome: ");
    scanf("%s", nome);
    printf("Introduza o seu apelido: ");
    scanf("%s", apelido);
    printf("Hello %s %s", nome, apelido);    

    return 0;
}
