algoritmo "ex8"
// Fun��o : Escreva um algoritmo que calcule o vig�simo termo de uma PA.
//          Dever�o ser fornecidos o primeiro termo e a raz�o.
//          F�rmula: an = a1 + (n-1) * r,
//          sendo a1 o primeiro termo e r a raz�o.
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Se��o de Declara��es
var
   n1,n,r:real
inicio
      escreva("Primeiro termo da PA: ")
      leia(n1)
      escreva("Raz�o da PA: ")
      leia(r)
      n <- 20
      escreval("20� termo da PA �: ", n1 +(n-1)*r )
fimalgoritmo
