algoritmo "ex15"
// Função : Escreva um algoritmo que mostre a seguinte opção de menu
//          para o usuário e receba dele a opção para decidir a
//          operação a ser executada .
//              1 - Média ponderada de dois números de peso
//                  4 e 6 respectivamente.
//              2 - Verificar se um número é impar
//              Digite a opção desejada.
// Autor : Anton L. Mazon R. Rangel
// Data : 04/03/2015
// Seção de Declarações
var
   num1,num2:real
   opcao,num:inteiro
inicio
      escreval("1 - Média ponderada de dois números de peso 4 e 6 respectivamente.")
      escreval("2 - Verificar se um número é impar")
      escreva("Digite a opção desejada: ")
      leia(opcao)
      
      se(opcao = 1) entao
               limpatela
               escreva("Digite o 1º número: ")
               leia(num1)
               escreva("Digite o 2º número: ")
               leia(num2)
               escreval("Média ponderada: ", (num1*4 + num2*6)/(4+6))
      fimse
      
      se(opcao = 2) entao
               limpatela
               escreva("Digite o número: ")
               leia(num)
               se(num%2=0) entao
                   escreval(num, " é par")
               senao
                    escreval(num, " é ímpar")
               fimse
      fimse
fimalgoritmo
