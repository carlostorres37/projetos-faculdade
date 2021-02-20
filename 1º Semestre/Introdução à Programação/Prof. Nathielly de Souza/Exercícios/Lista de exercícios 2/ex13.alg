algoritmo "ex13"
// Função : Escreva um algoritmo que permita ao usuário entrar com
//          quatro números positivos. Imprima os valores lidos em
//          ordem decrescente.
// Autor : Anton L. Mazon R. Rangel
// Data : 04/03/2015
// Seção de Declarações
var
   num1,num2,num3,num4,x:real
inicio
      escreva("Digite o 1º número: ")
      leia(num1)
      escreva("Digite o 2º número: ")
      leia(num2)
      escreva("Digite o 3º número: ")
      leia(num3)
      escreva("Digite o 4º número: ")
      leia(num4)
      
      se (num4 > num3) entao
         x <- num4
         num4 <- num3
         num3 <- x
      fimse
      se (num3 > num2) entao
         x <- num3
         num3 <- num2
         num2 <- x
      fimse
      se (num2 > num1) entao
         x <- num2
         num2 <- num1
         num1 <- x
      fimse
      se (num4 > num3) entao
         x <- num4
         num4 <- num3
         num3 <- x
      fimse
      se (num3 > num2) entao
         x <- num3
         num3 <- num2
         num2 <- x
      fimse
      se (num4 > num3) entao
         x <- num4
         num4 <- num3
         num3 <- x
      fimse
      
      escreval()
      escreval("----- ORDEM DECRESCENTE -----")
      escreval(num1)
      escreval(num2)
      escreval(num3)
      escreval(num4)
fimalgoritmo
