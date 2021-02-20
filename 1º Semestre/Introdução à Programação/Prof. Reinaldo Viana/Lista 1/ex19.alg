algoritmo "ex19"
// Função : O custo ao consumidor de um carro novo é a soma do custo
//          de fábrica com a percentagem do distribuidor e dos impostos
//          (aplicados ao custo de fábrica). Supondo que a percentagem
//          do distribuidor seja de 28% e os impostos de 45%, escrever
//          um algoritmo que leia o custo de fábrica de um carro e
//          escreva o custo ao consumidor.
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Seção de Declarações
var
   fabrica:real
inicio
      escreva("Custo de fábrica de um carro: ")
      leia(fabrica)
      
      escreval"Custo ao consumidor: ", fabrica+(fabrica*0.28)+(fabrica*0.45))
fimalgoritmo
