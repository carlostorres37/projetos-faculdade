algoritmo "ex12"
// Fun��o : Fa�a um programa que calcule a hipotenusa de um triangulo
//          retangulo atraves do Teorema de Pitagoras, sendo dados
//          os dois catetos do triangulo. O Teorema de Pitagoras
//          � dado por:
//          a� = b� + c�
//          onde a � a hipotenusa e b e c s�o os catetos.
// Autor : Anton L. Mazon R. Rangel
// Data : 11/03/2015
// Se��o de Declara��es
var
   b,c:real
inicio
      escreva("Digite um cateto   : ")
      leia(b)
      escreva("Digite outro cateto: ")
      leia(c)
      
      escreval()
      escreval("Hipotenusa: ", raizq(b*b+c*c))
fimalgoritmo
