#include <stdio.h>

float Conversao(float _c){
    return (_c * 9 / 5) + 32;
}

main(){
    float c;

    printf("Graus C: ");
    scanf("%f", &c);

    printf("Graus F: %.1f", Conversao(c));
}
