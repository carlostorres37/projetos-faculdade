algoritmo "ex16"
// Função : Desenvolva um algoritmo que receba o salário base de um
//          funcionário, calcule e mostre o salário a receber,
//          sabendo-se que o funcionário tem gratificação de 5%
//          sobre o salário base e para imposto de 7% também sobre
//          o salário base.
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Seção de Declarações
var
   s:real
inicio
      escreva("Salário: ")
      leia(s)
      
      escreval()
      escreval("Salário a receber: R$", s+(s*0.05)-(s*0.07))
fimalgoritmo
