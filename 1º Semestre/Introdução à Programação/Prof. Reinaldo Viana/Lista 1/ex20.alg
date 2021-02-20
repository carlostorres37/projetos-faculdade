algoritmo "ex20"
// Função : Sabe-se que, para iluminar de maneira correta os cômodos
//          de uma casa, para cada m2, deve-se usar 18W de potência.
//          Desenvolva um algoritmo que receba as duas dimensões de um
//          cômodo (em metros), calcule e mostre sua área (em m2) e a
//          potência de iluminação que deverá ser utilizada.
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Seção de Declarações
var
   a,b,area:real
inicio
      escreva("Largura do comodo (m): ")
      leia(a)
      escreva("Comprimento do comodo (m): ")
      leia(b)
      area <- a*b
      escreval()
      escreval("Área do comodo: ", area, "m²")
      escreval("Potência de iluminição necessária: ", area*18, "W")
fimalgoritmo
