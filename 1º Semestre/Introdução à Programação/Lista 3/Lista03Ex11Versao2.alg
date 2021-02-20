algoritmo "l3 exe 11"
var
     a,b,c,i, aux : inteiro
inicio
para i de 1 ate 3 faca
      limpatela
      escreval (" *****",  i, " *************")
      escreva ("digite o 1º  numero: ")
      leia (a)
      escreva ("digite o 2º numero: ")
      leia (b)
      escreva ("digite o 3º numero: ")
      leia (c)
      se ( a  >= b ) entao
       	aux <- a
       	a <- b
       	b <- aux
      fimse
      se ( a  >= c ) entao
      	aux <- a
      	a <- c
      	c <- aux
      fimse
      se ( b >= c ) entao
      	aux <- b
      	b <- c
      	c <- aux
      fimse
      escreval (a," ", b," ", c)
      pausa
fimpara
fimalgoritmo
