algoritmo "ex8"
// Fun��o : Fa�a um programa que receba o valor de um deposito e o valor
//          da taxa de juros, calcule e mostre o valor do rendimento
//          e o valor total depois do rendimento
// Autor : Anton L. Mazon R. Rangel
// Data : 11/03/2015
// Se��o de Declara��es
var
   deposito,taxa,rend:real
inicio
      escreva("Valor do dep�sito: ")
      leia(deposito)
      escreva("Taxa de juros: ")
      leia(taxa)
      
      taxa <- taxa/100
      rend <- deposito*taxa
      
      escreval()
      escreval("Valor do rendimento: ", rend)
      escreval("Valor total        : ", deposito+rend)
fimalgoritmo
