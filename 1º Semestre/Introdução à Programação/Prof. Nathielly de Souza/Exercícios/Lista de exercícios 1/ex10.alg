algoritmo "ex10"
// Função : Leia dois números e salve-os nas variáveis a e b.
//          Troque os valores de a e b utilizando uma
//           variável auxiliar aux
// Autor : Anton L. Mazon R. Rangel
// Data : 24/02/2015
// Seção de Declarações
var
   a,b,aux:numerico
inicio
      escreva("Digite o 1º número: ")
      leia(a)
      escreva("Digite o 2º número: ")
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
