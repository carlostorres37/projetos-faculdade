algoritmo "ex6"
// Função : Escreva um algoritmo que leia um número e imprima:
//          a. O quadrado deste número;
//          b. O cubo deste número;
//          c. A terça parte deste número;
//          d. O oposto deste número;
//          e. A média aritmética entre o número e seu antecessor.
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Seção de Declarações
var
   n:inteiro
inicio
      escreva("Digite um numero: ")
      leia(n)
      escreval("Seu quadrado é : ", n*n)
      escreval("Seu cubo é     : ", n*n*n)
      escreval("Sua terça parte: ", n/3)
      escreval("Seu oposto é   : ", -n)
      escreval("Média entre ele e seu antecessor: ", (n+(n-1))/2)
fimalgoritmo
