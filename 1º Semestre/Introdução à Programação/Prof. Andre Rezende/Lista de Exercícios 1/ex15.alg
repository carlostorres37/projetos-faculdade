algoritmo "ex15"
// Função : Faça um programa que receba o numero de horas trabalhadas
//          e o valor do salario minimo. Calcule e mostre o salario a
//          receber seguindo as regras abaixo:
//          a) a hora trabalhada vale a metade do salario minimo
//          b) o salario bruto equivale ao numero de horas trabalhadas
//             multiplicado pelo valor da hora trabalhada
//          c) o imposot equivale a 3% do salario bruto
//          d) o salario a receber equivale ao salario bruto menos o
//             imposto
// Autor : Anton L. Mazon R. Rangel
// Data : 11/03/2015
// Seção de Declarações
var
   horas,valor,sal_b,imposto:real
inicio
      escreva("Horas trabalhadas: ")
      leia(horas)
      escreva("Valor do salario minimo: ")
      leia(valor)
      
      sal_b <- horas*(valor/2)
      imposto <- sal_b*0.03
      
      escreval()
      escreval("Salario a receber: ", sal_b-imposto)
fimalgoritmo
