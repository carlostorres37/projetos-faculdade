algoritmo "ex13"
// Função : Faça um programa que leia as seguintes informções
//          de um funcionario: nome, idade, cargo e seu salario bruto.
//          O programa deve:
//          a) Calcular o salario bruto reajustado de 38%
//          b) Calcular uma gratificação de 20% do salario bruto
//          c) Calcular o salario total (salario bruto + gratificação)
//          d) Calcular o salário liquido (salario total - imposto)
//          e) Mostrar na tela como resultado os valores do salario
//             bruto reajustado, da gratificação, do imposto devido
//             e do salario liquido recebido
// Autor : Anton L. Mazon R. Rangel
// Data : 11/03/2015
// Seção de Declarações
var
   nome,cargo:caracter
   idade:inteiro
   sal_b,sal_r,grat,sal_t,imposto, sal_l:real
inicio
      escreva("Nome: ")
      leia(nome)
      escreva("Idade: ")
      leia(idade)
      escreva("Cargo: ")
      leia(cargo)
      escreva("Salario bruto: ")
      leia(sal_b)
      
      sal_r <- sal_b + (sal_b*0.38) // a)
      grat <- sal_b + (sal_b*0.2)   // b)
      sal_t <- sal_b + grat         // c)
      imposto <- sal_t*0.15         // d)
      sal_l <- sal_t - imposto      // e)
      
      // f)
      escreval()
      escreval("Salario bruto reajustado: ", sal_r)
      escreval("Gratificação            : ", grat)
      escreval("Imposto devido          : ", imposto)
      escreval("Salario liquido recebido: ", sal_l)
      
fimalgoritmo
