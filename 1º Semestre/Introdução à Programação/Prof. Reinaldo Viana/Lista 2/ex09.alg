algoritmo "ex9"
// Fun��o : Fa�a um algoritmo que mostre o menu de op��es a seguir,
//          receba a op��o do usu�rio e os dados necess�rios para
//          executar cada opera��o.
//            Menu de Op��es
//            1. Somar dois n�meros
//            2. Raiz quadrada de um n�mero
//            Digite a op��o desejada:
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Se��o de Declara��es 
var
   op:inteiro
   a,b:real
inicio
      escreval("----- Menu de Op��es -----")
      escreval("1. Somar dois n�meros")
      escreval("2. Raiz quadrada de um n�mero")
      escreva("Digite a op��o desejada: ")
      leia(op)
      
      se (op = 1) ou (op = 2) entao
         se (op = 1) entao
            limpatela
            escreva("Digite o 1� numero: ")
            leia(a)
            escreva("Digite o 2� numero: ")
            leia(b)
            
            escreval()
            escreval("A soma �: ", a+b)
         senao
            limpatela
            escreva("Digite um numero: ")
            leia(a)
            
            escreval()
            escreval("Sua raiz �: ", raizq(a))
         fimse
      senao
         escreval("Op��o invalida!")
      fimse
fimalgoritmo
