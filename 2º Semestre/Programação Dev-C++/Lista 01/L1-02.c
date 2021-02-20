#include <stdio.h>

main(){
   
   int num1,num2,aux;
   
   printf("Entre com o primeiro numero:");
   scanf("%d", &num1);
   printf("Entre com o segundo numero:");
   scanf("%d", &num2);
   
   aux = num1;
   num1 = num2;
   num2 = aux;
   
   printf("O inverso dos valores digitados sao: %d e %d", num1, num2);
 
}

