algoritmo "ex8"
// Fun��o : Fa�a um algoritmo que leia tr�s n�meros e imprima estes
//          n�meros de forma ordenada.
// Autor : Anton L. Mazon R. Rangel
// Data : 04/03/2015
// Se��o de Declara��es
var
   num1, num2, num3, x:real
inicio
      escreva("Digite o 1� n�mero: ")
      leia(num1)
      escreva("Digite o 2� n�mero: ")
      leia(num2)
      escreva("Digite o 3� n�mero: ")
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
      
      escreval("----- N�meros ordenados -----")
      escreval(num1)
      escreval(num2)
      escreval(num3)
fimalgoritmo
