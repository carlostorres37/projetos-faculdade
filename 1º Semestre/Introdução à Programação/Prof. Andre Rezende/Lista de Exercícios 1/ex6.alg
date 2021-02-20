algoritmo "ex6"
// Função : Faça um programa que receba o salario-base de um funcionario,
//          calcule e mostre o salario a receber, sabendo-se que esse
//          funcionario tem gratificação de 5% sobre o salario-base e
//          paga imposto de 7% sobre o salário-base
// Autor : Anton L. Mazon R. Rangel
// Data : 11/03/2015
// Seção de Declarações
var
   s:real
inicio
      escreva("Digite o salario-base: ")
      leia(s)
      
      escreval()
      escreval("Salario a receber: ", s+(s*0.05)-(s*0.07))
fimalgoritmo
