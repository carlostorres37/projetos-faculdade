algoritmo "ex10"
// Fun��o : Escreva um algoritmo que Leia dois n�meros e salve-os
//          nas vari�veis a e b. Troque os valores de a e b utilizando
//          uma vari�vel auxiliar aux.
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Se��o de Declara��es
var
   a,b,aux:real
inicio
      escreva("Digite um n�mero   : ")
      leia(a)
      escreva("Digite outro n�mero: ")
      leia(b)

      aux <- a
      a <- b
      b < aux

      escreval("Novo a: ", a)
      escreval("Novo b: ", b)
fimalgoritmo
