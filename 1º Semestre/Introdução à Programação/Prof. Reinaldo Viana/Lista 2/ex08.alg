algoritmo "ex8"
// Fun��o : Fa�a um algoritmo que receba tr�s n�meros e mostre-os
//          em ordem crescente. Suponha que o usu�rio digitar� tr�s
//          n�meros diferentes.
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Se��o de Declara��es 
var
   a,b,c,aux:real
inicio
      escreva("Digite 1� numero: ")
      leia(a)
      escreva("Digite 2� numero: ")
      leia(b)
      escreva("Digite 3� numero: ")
      leia(c)
      
      se (a > b) entao
         aux <- a
         a <- b
         b <- aux
      fimse
      se (b > c) entao
         aux <- b
         b <- c
         c <- aux
      fimse
      se (a > b) entao
         aux <- a
         a <- b
         b <- aux
      fimse
      
      escreval()
      escreval("---- ORDEM CRESCENTE ----")
      escreval(a)
      escreval(b)
      escreval(c)
fimalgoritmo
