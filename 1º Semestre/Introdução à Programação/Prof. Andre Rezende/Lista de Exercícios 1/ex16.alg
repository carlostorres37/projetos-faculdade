algoritmo "ex16"
// Função : Um trabalhador recebeu seu salario e o depositou em sua conta
//          corrente bancaria. Esse trabalhador emitiu dois cheques e
//          agora deseja saber seu saldo atual. Sabe-se que cada operação
//          bancaria de retirada paga CPMF de 0.38% e o saldo inicial da
//          conta esta zerado.
// Autor : Anton L. Mazon R. Rangel
// Data : 11/03/2015
// Seção de Declarações
var
   salario,cheque1,cheque2:real
inicio
      escreva("Salario recebido: ")
      leia(salario)
      escreva("Valor do 1º cheque: ")
      leia(cheque1)
      escreva("Valor do 2º cheque: ")
      leia(cheque2)
      
      escreval()
      escreval("Saldo atual: R$", salario-(cheque1+(cheque1*0.38))-(cheque2+(cheque2*0.38)))
fimalgoritmo
