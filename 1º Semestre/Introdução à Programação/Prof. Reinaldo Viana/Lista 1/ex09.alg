algoritmo "ex9"
// Fun��o : Fa�a um algoritmo que leia a raz�o de uma PA e o valor do
//          9o termo e calcule o 1o termo da s�rie.
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Se��o de Declara��es
var
   n9,n,r:real
inicio
      escreva("9� termo da PA: ")
      leia(n9)
      escreva("Raz�o da PA: ")
      leia(r)
      n <- 9
      escreval("1� termo da PA �: ", n9 - ((n-1)*r) )
fimalgoritmo
