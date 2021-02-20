algoritmo "ex12"
// Função : Faça um programa que calcule a hipotenusa de um triangulo
//          retangulo atraves do Teorema de Pitagoras, sendo dados
//          os dois catetos do triangulo. O Teorema de Pitagoras
//          é dado por:
//          a² = b² + c²
//          onde a é a hipotenusa e b e c são os catetos.
// Autor : Anton L. Mazon R. Rangel
// Data : 11/03/2015
// Seção de Declarações
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
