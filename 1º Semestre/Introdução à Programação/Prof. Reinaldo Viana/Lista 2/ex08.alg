algoritmo "ex8"
// Função : Faça um algoritmo que receba três números e mostre-os
//          em ordem crescente. Suponha que o usuário digitará três
//          números diferentes.
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Seção de Declarações 
var
   a,b,c,aux:real
inicio
      escreva("Digite 1º numero: ")
      leia(a)
      escreva("Digite 2º numero: ")
      leia(b)
      escreva("Digite 3º numero: ")
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
