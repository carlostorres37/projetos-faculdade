algoritmo "ex7"
// Fun��o : Escreva um algoritmo que leia um n�mero e imprima:
//          a. O quadrado deste n�mero
//          b. A ter�a parte deste n�mero
//          c. O oposto deste n�mero
//          d. A m�dia aritm�tica entre n�mero e seu antecessor.
// Autor : Anton L. Mazon R. Rangel
// Data : 24/02/2015
// Se��o de Declara��es
var
   num:inteiro
inicio
      escreva("Digite um n�mero: ")
      leia(num)
      
      // a. O quadrado deste n�mero
      escreva("O quadrado �    : ")
      escreval( num * num )
      
      // b. A ter�a parte deste n�mero
      escreva("A ter�a parte � : ")
      escreval( num / 3 )
      
      // c. O oposto deste n�mero
      escreva("O oposto �      : ")
      escreval( - num )
      
      // d. A m�dia aritm�tica entre n�mero e seu antecessor.
      escreva("A m�dia �       : ")
      escreval( (num + (num - 1)) / 2 )
fimalgoritmo
