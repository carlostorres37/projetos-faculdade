algoritmo "ex20"
// Fun��o : Sabe-se que, para iluminar de maneira correta os c�modos
//          de uma casa, para cada m2, deve-se usar 18W de pot�ncia.
//          Desenvolva um algoritmo que receba as duas dimens�es de um
//          c�modo (em metros), calcule e mostre sua �rea (em m2) e a
//          pot�ncia de ilumina��o que dever� ser utilizada.
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Se��o de Declara��es
var
   a,b,area:real
inicio
      escreva("Largura do comodo (m): ")
      leia(a)
      escreva("Comprimento do comodo (m): ")
      leia(b)
      area <- a*b
      escreval()
      escreval("�rea do comodo: ", area, "m�")
      escreval("Pot�ncia de ilumini��o necess�ria: ", area*18, "W")
fimalgoritmo
