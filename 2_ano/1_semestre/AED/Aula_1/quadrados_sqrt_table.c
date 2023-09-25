#include <math.h>
#include <stdio.h>

int main (void) {
    int n, i;

    printf("Introduza a quantidade de linhas que a tabela irá conter\n");
    scanf("%d", &n);

    printf("n\t\t\t\tn^2\t\t\t\tsqrt(n)\n");
    for (i = 1; i <= n; i++) {
        printf("%d\t\t\t\t%d\t\t\t\t%f\n", i, i*i, sqrt(i));
    }
}