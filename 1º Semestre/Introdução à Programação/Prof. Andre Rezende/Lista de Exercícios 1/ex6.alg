algoritmo "ex6"
// Fun��o : Fa�a um programa que receba o salario-base de um funcionario,
//          calcule e mostre o salario a receber, sabendo-se que esse
//          funcionario tem gratifica��o de 5% sobre o salario-base e
//          paga imposto de 7% sobre o sal�rio-base
// Autor : Anton L. Mazon R. Rangel
// Data : 11/03/2015
// Se��o de Declara��es
var
   s:real
inicio
      escreva("Digite o salario-base: ")
      leia(s)
      
      escreval()
      escreval("Salario a receber: ", s+(s*0.05)-(s*0.07))
fimalgoritmo
