algoritmo "ex8"
// Função : Faça um programa que receba o valor de um deposito e o valor
//          da taxa de juros, calcule e mostre o valor do rendimento
//          e o valor total depois do rendimento
// Autor : Anton L. Mazon R. Rangel
// Data : 11/03/2015
// Seção de Declarações
var
   deposito,taxa,rend:real
inicio
      escreva("Valor do depósito: ")
      leia(deposito)
      escreva("Taxa de juros: ")
      leia(taxa)
      
      taxa <- taxa/100
      rend <- deposito*taxa
      
      escreval()
      escreval("Valor do rendimento: ", rend)
      escreval("Valor total        : ", deposito+rend)
fimalgoritmo
