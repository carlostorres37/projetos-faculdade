algoritmo "ex9"
// Fun��o : Escreva um algoritmo que calcule o vig�simo termo de uma PA.
//          Dever�o ser fornecidos o primeiro termo e a raz�o.
//          F�rmula: an = a1 + (n-1) x r,
//           sendo a1 o primeiro termo e r a raz�o.
// Autor : Anton L. Mazon R. Rangel
// Data : 24/02/2015
// Se��o de Declara��es
var
   a1,r,n:numerico
inicio
      escreva("Digite o primeiro termo da PA: ")
      leia(a1)
      escreva("Digite a raz�o da PA         : ")
      leia(r)
      
      n <- 20
      
      escreva("O 20� termo desta PA �       : ")
      escreva( a1 + (n - 1) * r )
fimalgoritmo
