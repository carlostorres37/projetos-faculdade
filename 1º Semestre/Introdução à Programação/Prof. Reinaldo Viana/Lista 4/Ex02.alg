algoritmo "Ex02"
// Função :
// Autor :
// Data : 28/05/2015
// Seção de Declarações 
var
   // Não pode ser NUMERICO pois não poderá
   // fazer o MOD(%) para verificar se é divisível
   n,num : INTEIRO
inicio
   // Seção de Comandos
   n <- 1
   ENQUANTO (n <= 155) FACA
      ESCREVA("Digite um número: ")
      LEIA(num)
      SE ((num MOD 4) = 0) ENTAO
         ESCREVAL(num, " é divisível por 4")
      FIMSE
      n <- n + 1
   FIMENQUANTO
fimalgoritmo
