algoritmo "ex17"
// Função : Sabe-se que o quilowatt de energia custa um quinto do salario
//          minimo. Faça um programa que receba o valor do salario
//          minimo e a quantidade de quilowatts consumida por uma
//          residencia. Calcule e mostre:
//          a) o valor, em reais, de cada quilowatt
//          b) o valor, em reais, a ser pago por essa residencia
//          c) o valor, em reais, a ser pago com desconto de 15%
// Autor : Anton L. Mazon R. Rangel
// Data : 11/03/2015
// Seção de Declarações
var
   sal_m,kw_c,kw,valor:real
inicio
      escreva("Salario minimo: ")
      leia(sal_m)
      escreva("K/w consumidos: ")
      leia(kw_c)
      
      kw <- sal_m/5
      
      //a)
      escreval()
      escreval("Valor do K/w: R$", kw)
      
      valor <- kw_c*kw
      //b)
      escreval("Valor a ser pago pela residencia: ", valor)
      
      //c)
      escreval("Valor a ser pago com 15% de desconto: ", valor-(valor*0.15))
fimalgoritmo
