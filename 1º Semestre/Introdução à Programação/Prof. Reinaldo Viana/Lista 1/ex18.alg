algoritmo "ex18"
// Função : Sabe-se que o quilowatt de energia custa um quinto do salário
//          mínimo. Faça um algoritmo que receba o valor do salário
//          mínimo e a quantidade de quilowatts consumida por uma
//          residência. Calcule e mostre:
//          a) o valor de cada quilowatt
//          b) o valor a ser pago por essa residência
//          c) o valor a ser pago com desconto de 15%
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Seção de Declarações
var
   sal_minimo,kw,kw_c,valor:real
inicio
      escreva("Salario minimo: ")
      leia(sal_minimo)
      escreva("K/w consumidos pela residencia: ")
      leia(kw_c)
      
      kw <- sal_minimo/5
      valor <- kw*kw_c
      escreval("a) O valor de cada quilowatt: ", kw)
      escreval("b) O valor a ser pago por essa residencia: ", valor)
      escreval("c) O valor a ser pago com desconto de 15%: ", valor*0.15)
fimalgoritmo
