algoritmo "ex5"
// Fun��o : Escreva um algoritmo que entre com um n�mero e informe
//          se ele divis�vel por 3 e por 7.
// Autor : Anton L. Mazon R. Rangel
// Data : 04/03/2015
// Se��o de Declara��es
var
   num:inteiro
inicio
      escreva("Digite um n�mero: ")
      leia(num)

      se ( ((num MOD 3) = 0) e ((num MOD 7) = 0)) entao
          escreval(num, " � divis�vel por 3 e por 7")
      senao
          escreval(num, " n�o � divis�vel por 3 e por 7")
      fimse
fimalgoritmo
