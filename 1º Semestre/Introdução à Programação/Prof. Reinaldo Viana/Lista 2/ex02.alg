algoritmo "ex2"
// Função : Desenvolva um algoritmo que receba quatro notas de um aluno,
//          calcule e mostre a média aritmética das notas e a mensagem
//          de aprovado ou reprovado, considerando para aprovação média
//          mínima igual a 8.
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Seção de Declarações
var
   n1,n2,n3,n4,media:real
inicio
   escreva("Nota 1: ")
   leia(n1)
   escreva("Nota 2: ")
   leia(n2)
   escreva("Nota 3: ")
   leia(n3)
   escreva("Nota 4: ")
   leia(n4)

   media <- (n1+n2+n3+n4)/4

   escreval()
   escreva("Média: ", media)
   se (media >= 8) entao
      escreval("   APROVADO")
   senao
      escreval("   REPROVADO")
   fimse
fimalgoritmo
