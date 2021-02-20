algoritmo "ex7"
// Função : Escreva um algoritmo que leia um número e imprima:
//          a. O quadrado deste número
//          b. A terça parte deste número
//          c. O oposto deste número
//          d. A média aritmética entre número e seu antecessor.
// Autor : Anton L. Mazon R. Rangel
// Data : 24/02/2015
// Seção de Declarações
var
   num:inteiro
inicio
      escreva("Digite um número: ")
      leia(num)
      
      // a. O quadrado deste número
      escreva("O quadrado é    : ")
      escreval( num * num )
      
      // b. A terça parte deste número
      escreva("A terça parte é : ")
      escreval( num / 3 )
      
      // c. O oposto deste número
      escreva("O oposto é      : ")
      escreval( - num )
      
      // d. A média aritmética entre número e seu antecessor.
      escreva("A média é       : ")
      escreval( (num + (num - 1)) / 2 )
fimalgoritmo
