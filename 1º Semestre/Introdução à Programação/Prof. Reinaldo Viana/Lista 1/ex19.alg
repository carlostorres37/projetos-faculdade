algoritmo "ex19"
// Fun��o : O custo ao consumidor de um carro novo � a soma do custo
//          de f�brica com a percentagem do distribuidor e dos impostos
//          (aplicados ao custo de f�brica). Supondo que a percentagem
//          do distribuidor seja de 28% e os impostos de 45%, escrever
//          um algoritmo que leia o custo de f�brica de um carro e
//          escreva o custo ao consumidor.
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Se��o de Declara��es
var
   fabrica:real
inicio
      escreva("Custo de f�brica de um carro: ")
      leia(fabrica)
      
      escreval"Custo ao consumidor: ", fabrica+(fabrica*0.28)+(fabrica*0.45))
fimalgoritmo
