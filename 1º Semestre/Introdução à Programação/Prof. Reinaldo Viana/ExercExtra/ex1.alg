algoritmo "ex1"
// Fun��o : 1) Uma pessoa investiu R$10.000,00 em a��es de uma empresa de
//             petr�leo em 27/01/2015.
//             No dia 28 de janeiro, o pre�o de uma a��o caiu 11,21%.
//             Poucos dias depois, houve varia��o de +15,47% no dia 3
//             de fevereiro. Desenvolva um algoritmo que leia o valor
//             investido e retorne o valor atual de acordo com a situa��o
//             descrita.
// Autor : Anton L. Mazon R. Rangel
// Data : 30/03/2015
// Se��o de Declara��es 
var
   valor_i,valor_a:real
inicio
      escreva("Digite o valor investido em a��es: ")
      leia(valor_i)
      
      escreval("  Valor          %            Data")
      escreval("R$",valor_i, "                   27/01/2015")
      valor_a <- valor_i-(valor_i*0.1121)
      escreval("R$",valor_a, "       -11,21%      28/01/2015")
      valor_a <- valor_a + (valor_a*0.1547)
      escreval("R$",valor_a:2:2, "    +15,47%      03/02/2015")
fimalgoritmo
