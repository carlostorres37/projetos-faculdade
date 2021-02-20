algoritmo "ex10"
// Função : Escreva um algoritmo que Leia dois números e salve-os
//          nas variáveis a e b. Troque os valores de a e b utilizando
//          uma variável auxiliar aux.
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Seção de Declarações
var
   a,b,aux:real
inicio
      escreva("Digite um número   : ")
      leia(a)
      escreva("Digite outro número: ")
      leia(b)

      aux <- a
      a <- b
      b < aux

      escreval("Novo a: ", a)
      escreval("Novo b: ", b)
fimalgoritmo
