algoritmo "ex2"
// Fun��o : Desenvolva um algoritmo que leia tr�s n�meros e imprima
//          a soma se for maior que 30, o produto se for menor que 50,
//          a media aritm�tica e ponderada deles se ambas forem maiores
//          de 35. O usu�rio dever� informar os pesos.
// Autor : Anton L. Mazon R. Rangel
// Data : 04/03/2015
// Se��o de Declara��es
var
    n1,n2,n3,soma,produto,media_s,media_p:real
    p1,p2,p3:inteiro
inicio
      escreva("Digite o 1� n�mero: ")
      leia(n1)
      escreva("Peso do 1� n�mero: ")
      leia(p1)
      escreva("Digite o 2� n�mero: ")
      leia(n2)
      escreva("Peso do 2� n�mero: ")
      leia(p2)
      escreva("Digite o 3� n�mero: ")
      leia(n3)
      escreva("Peso do 3� n�mero: ")
      leia(p3)
      
      soma <- n1 + n2 + n3
      se (soma > 30) entao
         escreval("A soma �: ", n1+n2+n3)
      fimse

      produto <- n1 * n2 * n3
      se (produto < 50) entao
         escreval("O produto �: ", n1*n2*n3)
      fimse
      
      media_s <- (n1+n2+n3)/3
      media_p <- ((n1*p1)+(n2*p2)+(n3*p3))/(p1+p2+p3)
      se ( (media_s > 35) e (media_p > 35)) entao
         escreval("A m�dia simples �: ", media_s)
         escreval("A m�dia ponderada �: ", media_p)
      fimse
fimalgoritmo
