algoritmo "ex9"
// Função : Faça um algoritmo que leia a razão de uma PA e o valor do
//          9o termo e calcule o 1o termo da série.
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Seção de Declarações
var
   n9,n,r:real
inicio
      escreva("9º termo da PA: ")
      leia(n9)
      escreva("Razão da PA: ")
      leia(r)
      n <- 9
      escreval("1º termo da PA é: ", n9 - ((n-1)*r) )
fimalgoritmo
