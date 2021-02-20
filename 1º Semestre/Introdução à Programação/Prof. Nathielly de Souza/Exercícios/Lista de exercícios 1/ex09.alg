algoritmo "ex9"
// Função : Escreva um algoritmo que calcule o vigésimo termo de uma PA.
//          Deverão ser fornecidos o primeiro termo e a razão.
//          Fórmula: an = a1 + (n-1) x r,
//           sendo a1 o primeiro termo e r a razão.
// Autor : Anton L. Mazon R. Rangel
// Data : 24/02/2015
// Seção de Declarações
var
   a1,r,n:numerico
inicio
      escreva("Digite o primeiro termo da PA: ")
      leia(a1)
      escreva("Digite a razão da PA         : ")
      leia(r)
      
      n <- 20
      
      escreva("O 20º termo desta PA é       : ")
      escreva( a1 + (n - 1) * r )
fimalgoritmo
