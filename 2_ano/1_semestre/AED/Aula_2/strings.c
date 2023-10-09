#include <string.h>
#include <stdio.h>
#include <ctype.h>

int main(void) {
    char s1[100];
    char s2[100];
    int i, count = 0, string_size;

    printf("Introduza a primeira string: ");
    scanf("%[^\n]%*c", s1);
    printf("Introduza a segunda string: ");
    scanf("%[^\n]%*c", s2);

    for (i = 0; i < strlen(s1); i++) {
        if (isalpha(s1[i])) {
            count++;
        } 
    }
    printf("\n Na primeira string existem %d que são letras do alfabeto", count);

    count = 0;
    for (i = 0; i < strlen(s2); i++) {
        if (isupper(s2[i])) {
            count++;
        }         
    }
    printf("\n Na segunda string existem %d letras maiúsculas", count);
    count = 0;

    if (strlen(s1) > strlen(s2)) {
        string_size = strlen(s1);
    } else {
        string_size = strlen(s2);
    }

    for (i = 0; i < string_size; i++) {
        if (isupper(s1[i])) {
            s1[i] = tolower(s1[i]);
        }  
        if (isupper(s2[i])) {
            s2[i] = tolower(s2[i]);
        } 
    }
    printf("\n%s\n%s", s1, s2);

    int comparation = strcmp(s1, s2);

    if (comparation == 0) {
        printf("\nAmbas as strings são iguais");
    } else {
        printf("\nAs strings são diferentes");
    }

    char s3[100];       
    strcpy(s3, s1);      
    strcat(s2, s3);     
    printf("\n%s\n", s2);  

    return 0;
}
