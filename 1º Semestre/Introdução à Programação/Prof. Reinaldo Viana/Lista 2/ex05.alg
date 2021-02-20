algoritmo "ex5"
// Função : Faça um algoritmo para resolver equações do segundo grau
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Seção de Declarações
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
      escreval("Não existem raízes reais nesta equação!")
   senao
      se (delta = 0) entao
         escreval("A raíz é ", (-b)/(2*a))
      senao
         escreval("As raízes são ", (-b+delta)/(2*a) ," e ", (-b-delta)/(2*a))
      fimse
   fimse
fimalgoritmo
