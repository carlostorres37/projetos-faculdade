#include <stdio.h>

float Conversao(float _c, float _q){
    printf("Quantia em reais: %.2f", _c * _q);
}

main(){
    float cotacao, quantia;

    printf("Cotacao em dolar: ");
    scanf("%f", &cotacao);

    printf("Quantia em dolar: ");
    scanf("%f", &quantia);

    Conversao(cotacao, quantia);
}
