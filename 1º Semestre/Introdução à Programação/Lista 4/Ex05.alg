algoritmo "Ex05"
// Função :
// Autor :
// Data : 29/05/2015
// Seção de Declarações
var
   soma: NUMERICO
   entrada: CARACTER
inicio
   // Seção de Comandos
   soma <- 0
   ESCREVAl("Escreva SAIR para finalizar o programada ou")
   ESCREVA("digite um número para continuar: ")
   LEIA(entrada)
   ENQUANTO (entrada <> "sair") FACA
      // caracpnum() serve para converter tipo caracter
      // em real ou inteiro possibilitando a soma
      soma <- soma +  caracpnum(entrada)
      ESCREVAl("Escreva SAIR para finalizar o programada ou")
      ESCREVA("digite um número para continuar: ")
      LEIA(entrada)
   FIMENQUANTO
   ESCREVAL("Soma dos números digitados:", soma)
fimalgoritmo
