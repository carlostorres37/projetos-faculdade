algoritmo "ex8"
// Função : Escreva um algoritmo que calcule o vigésimo termo de uma PA.
//          Deverão ser fornecidos o primeiro termo e a razão.
//          Fórmula: an = a1 + (n-1) * r,
//          sendo a1 o primeiro termo e r a razão.
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Seção de Declarações
var
   n1,n,r:real
inicio
      escreva("Primeiro termo da PA: ")
      leia(n1)
      escreva("Razão da PA: ")
      leia(r)
      n <- 20
      escreval("20º termo da PA é: ", n1 +(n-1)*r )
fimalgoritmo
