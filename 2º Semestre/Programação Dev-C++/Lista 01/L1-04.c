#include <stdio.h>

main(){
   
   float grauF, grauC;
   
   printf("Entre com o grau em Fahrenheit:");
   scanf("%f", grauF);
   
   grauC = ((grauF - 32)/1.8);
   
   printf("Grau digitado em Celsius: %.2f", grauC);
}
