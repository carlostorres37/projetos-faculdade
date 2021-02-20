algoritmo "ex8"
// Função : Faça um algoritmo que leia três números e imprima estes
//          números de forma ordenada.
// Autor : Anton L. Mazon R. Rangel
// Data : 04/03/2015
// Seção de Declarações
var
   num1, num2, num3, x:real
inicio
      escreva("Digite o 1º número: ")
      leia(num1)
      escreva("Digite o 2º número: ")
      leia(num2)
      escreva("Digite o 3º número: ")
      leia(num3)
      
      se (num2 < num1) entao
         x <- num1
         num1 <- num2
         num2 <- x
      fimse
      
      se (num3 < num2) entao
         x <- num2
         num2 <- num3
         num3 <- x
      fimse
      
      se (num2 < num1) entao
         x <- num1
         num1 <- num2
         num2 <- x
      fimse
      
      escreval("----- Números ordenados -----")
      escreval(num1)
      escreval(num2)
      escreval(num3)
fimalgoritmo
