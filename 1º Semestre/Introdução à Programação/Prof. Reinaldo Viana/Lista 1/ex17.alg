algoritmo "ex17"
// Fun��o : Cada degrau de uma escada tem X de altura.
//          Fa�a um algoritmo que receba essa altura e a altura que
//          o usu�rio deseja alcan�ar subindo a escada, calcule e
//          mostre quantos degraus ele dever� subir para atingir seu
//          objetivo, sem se preocupar com a altura do usu�rio.
//          Todas as medidas fornecidas devem estar em metros.
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Se��o de Declara��es
var
   x,altura:real
inicio
      escreva("Altura do degrau (m): ")
      leia(x)
      escreva("Altura almejada (m): ")
      leia(altura)
      
      escreval()
      escreval("S�o necess�rios subir ", altura/x, " degraus")
fimalgoritmo
