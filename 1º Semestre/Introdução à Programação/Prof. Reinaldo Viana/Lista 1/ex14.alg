algoritmo "ex13"
// Função : Crie um algoritmo que efetue o cálculo do salário
//          líquido de um professor. Serão fornecidos: valor da
//          hora aula, o número de aulas dadas no mês e percentual
//          de desconto no INSS.
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Seção de Declarações
var
   valor,aulas,percentual,sal:real
inicio
      escreva("Valor da hora aula: ")
      leia(valor)
      escreva("Aulas dadas no mês: ")
      leia(aulas)
      escreva("Percental de desconto no INSS: ")
      leia(percentual)
      
      percentual <- percentual/100
      sal <- valor*aulas
      
      escreval()
      escreval("Salário bruto  : R$", sal)
      escreval("Salário líquido: R$", sal-(sal*percentual))
fimalgoritmo
