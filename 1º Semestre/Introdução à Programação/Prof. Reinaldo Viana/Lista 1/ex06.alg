algoritmo "ex6"
// Fun��o : Escreva um algoritmo que leia um n�mero e imprima:
//          a. O quadrado deste n�mero;
//          b. O cubo deste n�mero;
//          c. A ter�a parte deste n�mero;
//          d. O oposto deste n�mero;
//          e. A m�dia aritm�tica entre o n�mero e seu antecessor.
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Se��o de Declara��es
var
   n:inteiro
inicio
      escreva("Digite um numero: ")
      leia(n)
      escreval("Seu quadrado � : ", n*n)
      escreval("Seu cubo �     : ", n*n*n)
      escreval("Sua ter�a parte: ", n/3)
      escreval("Seu oposto �   : ", -n)
      escreval("M�dia entre ele e seu antecessor: ", (n+(n-1))/2)
fimalgoritmo
