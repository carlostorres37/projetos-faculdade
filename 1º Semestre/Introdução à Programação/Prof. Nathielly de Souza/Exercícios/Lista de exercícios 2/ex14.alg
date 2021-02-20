algoritmo "ex14"
// Função : Escreva um algoritmo que mostre a seguinte opção de menu
//          para o usuário e receba dele a opção para decidir a
//          operação a ser executada:
//              1 - Somar dois números
//              2 - Raiz quadrada do numero
//              Digite a opção desejada.

// Autor : Anton L. Mazon R. Rangel
// Data : 04/03/2015
// Seção de Declarações
var
   num1,num2:real
   opcao:inteiro
inicio
      escreval("1 - Somar dois números")
      escreval("2 - Raiz quadrada do numero")
      escreva("Digite a opção desejada: ")
      leia(opcao)
      
      se (opcao = 1) entao
         limpatela
         escreva("Digite o 1º número: ")
         leia(num1)
         escreva("Digite o 2º número: ")
         leia(num2)
         escreval("A soma é: ", num1 + num2)
      fimse
      
      se (opcao = 2) entao
         limpatela
         escreva("Digite um número: ")
         leia(num1)
         escreva("A raiz é: ", raizq(num1))
      fimse
      
      
fimalgoritmo
