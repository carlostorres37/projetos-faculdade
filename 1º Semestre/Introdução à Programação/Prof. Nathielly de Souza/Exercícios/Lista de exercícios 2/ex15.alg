algoritmo "ex15"
// Fun��o : Escreva um algoritmo que mostre a seguinte op��o de menu
//          para o usu�rio e receba dele a op��o para decidir a
//          opera��o a ser executada .
//              1 - M�dia ponderada de dois n�meros de peso
//                  4 e 6 respectivamente.
//              2 - Verificar se um n�mero � impar
//              Digite a op��o desejada.
// Autor : Anton L. Mazon R. Rangel
// Data : 04/03/2015
// Se��o de Declara��es
var
   num1,num2:real
   opcao,num:inteiro
inicio
      escreval("1 - M�dia ponderada de dois n�meros de peso 4 e 6 respectivamente.")
      escreval("2 - Verificar se um n�mero � impar")
      escreva("Digite a op��o desejada: ")
      leia(opcao)
      
      se(opcao = 1) entao
               limpatela
               escreva("Digite o 1� n�mero: ")
               leia(num1)
               escreva("Digite o 2� n�mero: ")
               leia(num2)
               escreval("M�dia ponderada: ", (num1*4 + num2*6)/(4+6))
      fimse
      
      se(opcao = 2) entao
               limpatela
               escreva("Digite o n�mero: ")
               leia(num)
               se(num%2=0) entao
                   escreval(num, " � par")
               senao
                    escreval(num, " � �mpar")
               fimse
      fimse
fimalgoritmo
