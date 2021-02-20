algoritmo "Ex04"
// Função :
// Autor :
// Data : 28/05/2015
// Seção de Declarações 
var
   n,num,maior,menor:NUMERICO
inicio
   // Seção de Comandos
   n <- 1
   ENQUANTO (n <= 254) FACA
      ESCREVA("Digite um número:")
      LEIA(num)
      SE (n = 1) ENTAO
         maior <- num
         menor <- num
      SENAO
         SE (num > maior) ENTAO
            maior <- num
         FIMSE
         SE (num < menor) ENTAO
            menor <- num
         FIMSE
      FIMSE
      n <- n + 1
   FIMENQUANTO
   ESCREVAL("A diferença entre ", menor," e o ", maior, " é ", (maior-menor))
fimalgoritmo
