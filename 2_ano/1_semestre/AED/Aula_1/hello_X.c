#include <stdio.h>

int main(void) {
    char nome[100];  // Declara uma variável para armazenar o nome

    // Utilizando gets()
    printf("Usando gets():\n");
    printf("Introduza o seu nome: ");
    gets(nome);
    printf("Hello %s!\n\n", nome);

    // -- fgets()
    printf("Usando fgets():\n");
    printf("Introduza o seu nome: ");
    fgets(nome, sizeof(nome), stdin);
    printf("Hello %s!\n\n", nome);

    // -- scanf()
    printf("Usando scanf():\n");
    printf("Introduza o seu nome: ");
    scanf("%s", nome);
    printf("Hello %s!\n\n", nome);

    return 0;
}
