algoritmo "ex7"
// Função : Faça um programa que receba o salario-base de um funcionario,
//          calcule e mostre o seu salario a receber, sabendo-se que
//          esse funcionario tem gratificação de R$50,00 e paga
//          imposto de 10% sobre o salario-base
// Autor : Anton L. Mazon R. Rangel
// Data : 11/03/2015
// Seção de Declarações
var
   s:real
inicio
      escreva("Digite o salario-base: ")
      leia(s)
      
      escreval()
      escreval("Salario a receber: ", s+50-(s*0.1))
fimalgoritmo
