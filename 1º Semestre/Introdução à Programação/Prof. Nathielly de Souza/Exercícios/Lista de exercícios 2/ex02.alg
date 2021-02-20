algoritmo "ex2"
// Função : Desenvolva um algoritmo que leia três números e imprima
//          a soma se for maior que 30, o produto se for menor que 50,
//          a media aritmética e ponderada deles se ambas forem maiores
//          de 35. O usuário deverá informar os pesos.
// Autor : Anton L. Mazon R. Rangel
// Data : 04/03/2015
// Seção de Declarações
var
    n1,n2,n3,soma,produto,media_s,media_p:real
    p1,p2,p3:inteiro
inicio
      escreva("Digite o 1º número: ")
      leia(n1)
      escreva("Peso do 1º número: ")
      leia(p1)
      escreva("Digite o 2º número: ")
      leia(n2)
      escreva("Peso do 2º número: ")
      leia(p2)
      escreva("Digite o 3º número: ")
      leia(n3)
      escreva("Peso do 3º número: ")
      leia(p3)
      
      soma <- n1 + n2 + n3
      se (soma > 30) entao
         escreval("A soma é: ", n1+n2+n3)
      fimse

      produto <- n1 * n2 * n3
      se (produto < 50) entao
         escreval("O produto é: ", n1*n2*n3)
      fimse
      
      media_s <- (n1+n2+n3)/3
      media_p <- ((n1*p1)+(n2*p2)+(n3*p3))/(p1+p2+p3)
      se ( (media_s > 35) e (media_p > 35)) entao
         escreval("A média simples é: ", media_s)
         escreval("A média ponderada é: ", media_p)
      fimse
fimalgoritmo
