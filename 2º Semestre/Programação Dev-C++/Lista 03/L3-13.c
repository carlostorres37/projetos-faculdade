#include <stdio.h>

float Area(float _r){
    printf("Area da circunferencia: %f", 3.14159265359*(_r*_r));
}

main(){
    float r;

    printf("Insira o raio da circunferencia: ");
    scanf("%f", &r);

    Area(r);
}
