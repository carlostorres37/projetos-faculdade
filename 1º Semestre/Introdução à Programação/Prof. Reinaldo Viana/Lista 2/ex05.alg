algoritmo "ex5"
// Fun��o : Fa�a um algoritmo para resolver equa��es do segundo grau
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Se��o de Declara��es
var
   a,b,c,delta:real
inicio
   escreva("Digite a: ")
   leia(a)
   escreva("Digite b: ")
   leia(b)
   escreva("Digite c: ")
   leia(c)
   
   delta <- (b*b)+(4*a*c)
   
   se (delta < 0) entao
      escreval("N�o existem ra�zes reais nesta equa��o!")
   senao
      se (delta = 0) entao
         escreval("A ra�z � ", (-b)/(2*a))
      senao
         escreval("As ra�zes s�o ", (-b+delta)/(2*a) ," e ", (-b-delta)/(2*a))
      fimse
   fimse
fimalgoritmo
