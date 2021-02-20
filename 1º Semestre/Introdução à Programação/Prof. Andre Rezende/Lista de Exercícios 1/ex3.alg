algoritmo "ex3"
// Função : Faça um programa que receba tres notas e seus respectivos
//          pesos, calculer e mostre a media ponderada dessas notas.
// Autor : Anton L. Mazon R. Rangel
// Data : 11/03/2015
// Seção de Declarações 
var
   n1,n2,n3:real
   p1,p2,p3:inteiro
inicio
      escreva("Digite a 1ª nota: ")
      leia(n1)
      escreva("Digite o 1º peso: ")
      leia(p1)
      escreva("Digite a 2ª nota: ")
      leia(n2)
      escreva("Digite o 2º peso: ")
      leia(p2)
      escreva("Digite a 3ª nota: ")
      leia(n3)
      escreva("Digite o 3º peso: ")
      leia(p3)
      
      escreval()
      escreval("Média: ", (n1*p1+n2*p2+n3*p3)/(p1+p2+p3))
fimalgoritmo
