#include <stdio.h>

main(){

   int codigo;

   printf("Entre com o codigo da regiao:");
   scanf("%d", &codigo);
   
   switch(codigo){
      case 1:
         printf("Regiao Norte");
      break;
      case 2:
         printf("Regiao Nordeste");
      break;
      case 3:
         printf("Regiao Centro-oeste");
      break;
      case 4:
         printf("Regiao Sudeste");
      break;
      case 5:
         printf("Regiao Sul");
      break;
      default:
         printf("codigo inexistente");
      break;
      
   }
   
}
