algoritmo "ex14"
// Fun��o : Escreva um algoritmo que mostre a seguinte op��o de menu
//          para o usu�rio e receba dele a op��o para decidir a
//          opera��o a ser executada:
//              1 - Somar dois n�meros
//              2 - Raiz quadrada do numero
//              Digite a op��o desejada.

// Autor : Anton L. Mazon R. Rangel
// Data : 04/03/2015
// Se��o de Declara��es
var
   num1,num2:real
   opcao:inteiro
inicio
      escreval("1 - Somar dois n�meros")
      escreval("2 - Raiz quadrada do numero")
      escreva("Digite a op��o desejada: ")
      leia(opcao)
      
      se (opcao = 1) entao
         limpatela
         escreva("Digite o 1� n�mero: ")
         leia(num1)
         escreva("Digite o 2� n�mero: ")
         leia(num2)
         escreval("A soma �: ", num1 + num2)
      fimse
      
      se (opcao = 2) entao
         limpatela
         escreva("Digite um n�mero: ")
         leia(num1)
         escreva("A raiz �: ", raizq(num1))
      fimse
      
      
fimalgoritmo
