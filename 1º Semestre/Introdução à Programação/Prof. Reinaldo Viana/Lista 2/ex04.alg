algoritmo "ex4"
// Função : Faça um algoritmo que receba a altura e o sexo de uma pessoa
//          e calcule e mostre seu peso ideal, utilizando as seguintes
//          fórmulas (onde h é a altura)
//          Homens: (72.7 * h) - 58
//          Mulheres: (62.1 * h) - 44.7
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Seção de Declarações
var
   s,h:real
inicio
   escreva("Sexo (M/F): ")
   leia(s)
   escreva("Altura: ")
   leia(h)
   
   se (s = "M") ou (s = "F") entao
      se( s = "M") entao
          escreval("Peso ideal: ", (72.7*h)-58)
      senao
          escreval("Peso idual: ", (62.1*h)-44.7)
      fimse
   senao
      escreval("Sexo não existente!! É hermafrodita!!")
   fimse
fimalgoritmo
