algoritmo "ex5"
// Fun��o : Fa�a um programa que receba o salario de um funcionario
//          e o percentual de aumento, calcule e mostre o valor
//          do aumento e o novo salario.
// Autor : Anton L. Mazon R. Rangel
// Data : 11/03/2015
// Se��o de Declara��es
var
   s,p,aumento:real
inicio
      escreva("Salario: R$")
      leia(s)
      escreva("Percentual de aumento: ")
      leia(p)
      
      p <- p/100
      aumento <- s*p
      
      escreval()
      escreval("Aumento: R$", aumento)
      escreval("Novo salario: R$", s+aumento)
fimalgoritmo
