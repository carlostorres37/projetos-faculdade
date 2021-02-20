#include <stdio.h>

main(){

   int idade;
   float salario;

   printf("Entre com sua idade:");
   scanf("%d", &idade);
   printf("Entre com seu salario:");
   scanf("%f", salario);


   if(idade > 65 && salario <= 1903.98){
      printf("Isento");
   }else{
      printf("Nao isento");
   }
}
