algoritmo "ex17"
// Função : Cada degrau de uma escada tem X de altura.
//          Faça um algoritmo que receba essa altura e a altura que
//          o usuário deseja alcançar subindo a escada, calcule e
//          mostre quantos degraus ele deverá subir para atingir seu
//          objetivo, sem se preocupar com a altura do usuário.
//          Todas as medidas fornecidas devem estar em metros.
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Seção de Declarações
var
   x,altura:real
inicio
      escreva("Altura do degrau (m): ")
      leia(x)
      escreva("Altura almejada (m): ")
      leia(altura)
      
      escreval()
      escreval("São necessários subir ", altura/x, " degraus")
fimalgoritmo
