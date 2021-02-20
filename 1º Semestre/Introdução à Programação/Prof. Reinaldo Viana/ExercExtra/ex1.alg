algoritmo "ex1"
// Função : 1) Uma pessoa investiu R$10.000,00 em ações de uma empresa de
//             petróleo em 27/01/2015.
//             No dia 28 de janeiro, o preço de uma ação caiu 11,21%.
//             Poucos dias depois, houve variação de +15,47% no dia 3
//             de fevereiro. Desenvolva um algoritmo que leia o valor
//             investido e retorne o valor atual de acordo com a situação
//             descrita.
// Autor : Anton L. Mazon R. Rangel
// Data : 30/03/2015
// Seção de Declarações 
var
   valor_i,valor_a:real
inicio
      escreva("Digite o valor investido em ações: ")
      leia(valor_i)
      
      escreval("  Valor          %            Data")
      escreval("R$",valor_i, "                   27/01/2015")
      valor_a <- valor_i-(valor_i*0.1121)
      escreval("R$",valor_a, "       -11,21%      28/01/2015")
      valor_a <- valor_a + (valor_a*0.1547)
      escreval("R$",valor_a:2:2, "    +15,47%      03/02/2015")
fimalgoritmo
