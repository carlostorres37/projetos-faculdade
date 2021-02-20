algoritmo "ex9"
// Função : Faça um algoritmo que mostre o menu de opções a seguir,
//          receba a opção do usuário e os dados necessários para
//          executar cada operação.
//            Menu de Opções
//            1. Somar dois números
//            2. Raiz quadrada de um número
//            Digite a opção desejada:
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Seção de Declarações 
var
   op:inteiro
   a,b:real
inicio
      escreval("----- Menu de Opções -----")
      escreval("1. Somar dois números")
      escreval("2. Raiz quadrada de um número")
      escreva("Digite a opção desejada: ")
      leia(op)
      
      se (op = 1) ou (op = 2) entao
         se (op = 1) entao
            limpatela
            escreva("Digite o 1º numero: ")
            leia(a)
            escreva("Digite o 2º numero: ")
            leia(b)
            
            escreval()
            escreval("A soma é: ", a+b)
         senao
            limpatela
            escreva("Digite um numero: ")
            leia(a)
            
            escreval()
            escreval("Sua raiz é: ", raizq(a))
         fimse
      senao
         escreval("Opção invalida!")
      fimse
fimalgoritmo
