algoritmo "ex10"
// Fun��o : Leia dois n�meros e salve-os nas vari�veis a e b.
//          Troque os valores de a e b utilizando uma
//           vari�vel auxiliar aux
// Autor : Anton L. Mazon R. Rangel
// Data : 24/02/2015
// Se��o de Declara��es
var
   a,b,aux:numerico
inicio
      escreva("Digite o 1� n�mero: ")
      leia(a)
      escreva("Digite o 2� n�mero: ")
      leia(b)
      
      escreval("")
      escreva("Antigo a: ")
      escreval(a)
      escreva("Antigo b: ")
      escreval(b)
      
      aux <- a
      a <- b
      b <- aux
      
      escreval("")
      escreval("---- TROCADOS ----")
      escreva("Novo a: ")
      escreval(a)
      escreva("Novo b: ")
      escreval(b)
fimalgoritmo
