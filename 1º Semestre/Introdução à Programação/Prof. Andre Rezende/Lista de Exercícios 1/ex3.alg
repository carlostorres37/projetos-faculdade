algoritmo "ex3"
// Fun��o : Fa�a um programa que receba tres notas e seus respectivos
//          pesos, calculer e mostre a media ponderada dessas notas.
// Autor : Anton L. Mazon R. Rangel
// Data : 11/03/2015
// Se��o de Declara��es 
var
   n1,n2,n3:real
   p1,p2,p3:inteiro
inicio
      escreva("Digite a 1� nota: ")
      leia(n1)
      escreva("Digite o 1� peso: ")
      leia(p1)
      escreva("Digite a 2� nota: ")
      leia(n2)
      escreva("Digite o 2� peso: ")
      leia(p2)
      escreva("Digite a 3� nota: ")
      leia(n3)
      escreva("Digite o 3� peso: ")
      leia(p3)
      
      escreval()
      escreval("M�dia: ", (n1*p1+n2*p2+n3*p3)/(p1+p2+p3))
fimalgoritmo
