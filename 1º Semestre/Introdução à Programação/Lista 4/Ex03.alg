algoritmo "Ex03"
// Função :
// Autor :
// Data : 28/05/2015
// Seção de Declarações 
var
   num: INTEIRO
inicio
   // Iniciei com ESCREVA e LEIA antes do ENQUANTO para ter o controle do -1,
   // caso o usuario ja digite de primeira vez o -1 já irá bloquear.
   // Coisa que se tivesse no inicio do ENQUANTO seria executado ao menos uma
   // vez mesmo digitando -1, sendo um programa incorreto na lógica
   ESCREVA("Digite um número inteiro (-1 para sair):")
   LEIA(num)
   ENQUANTO (num <> -1)FACA
      SE (num <> 0) ENTAO
         SE ((NUM MOD 2) = 0) ENTAO
            ESCREVAL(num, " é par")
         SENAO
            ESCREVAL(num, " é ímpar")
         FIMSE
      FIMSE
      ESCREVA("Digite um número inteiro (-1 para sair):")
      LEIA(num)
   FIMENQUANTO
fimalgoritmo
