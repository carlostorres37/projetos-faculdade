algoritmo "ex16"
// Fun��o : Com base no programa a seguir, responda as seguintes quest�es:
//            a)	Fa�a o teste de mesa do programa "A1" utilizando
//                para isto a seguinte massa de dados: a recebe 6,
//                b recebe 8, c recebe 1. Quais s�o os valores finais
//                de a, b, c, e aux?
//            b)	Qual o papel da vari�vel aux neste programa?
// Autor : Anton L. Mazon R. Rangel
// Data : 04/03/2015
// Se��o de Declara��es
var
     a,b,c, aux : inteiro
inicio
      escreva ("digite o 1�  numero: ")
      leia (a)
      escreva ("digite o 2� numero: ")
      leia (b)
      escreva ("digite o 3� numero: ")
      leia (c)

      se ( a  > b ) entao
 	      aux <- a
 	      a <- b
         b <- aux
      fimse
      se ( a  > c ) entao
      	aux <- a
      	a <- c
      	c <- aux
      fimse
      se ( b > c ) entao
      	aux <- b
      	b <- c
      	c <- aux
      fimse
      
      limpatela
      escreval(" a) ")
      escreval("a =   ", a)
      escreval("b =   ", b)
      escreval("c =   ", c)
      escreval("aux = ", aux)
      escreval()
      escreval(" b) ")
      escreval("O papel da vari�vel aux nesse programa � de")
      escreval("guardar o valor de outra vari�vel (a/b) para")
      escreval("inseri-la na nova vari�vel trocada (b/c)")
fimalgoritmo

