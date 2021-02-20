algoritmo "A1-Ex02"
// Função :
// Autor :
// Data : 19/04/2015
// Seção de Declarações 
var
   i,produto,multiplos7,somaImpares:inteiro
   primeiro: logico
   divisivel: caracter
inicio
   // Seção de Comandos

   // Digo que produto é 1 pois quando multiplicar pelo primeiro numero sera igual a ele mesmo
   produto <- 1

   // Falo que numeros multiplos de 7 é igual a zero para a variavel comecar ja com algum valor
   multiplos7 <- 0
   
   // Mesma coisa do de cima
   somaImpares <- 0
   
   // Aqui irei falar que o primeiro é verdadeiro, que ai, dentro do PARA irei ferificar se ele eh verdadeiro e saberei que eh o primeiro numero
   primeiro <- verdadeiro
   
   PARA i DE 510 ATE 910 PASSO 1 FACA
      // Verifico se ele é par, se for faço o produto
      SE ((i % 2) = 0) ENTAO
         produto <- produto * i
      FIMSE

      // Verifico se ele é multiplo de 7, se for faço somo mais 1
      SE ((i % 7) = 0) ENTAO
         multiplos7 <- multiplos7 + 1
      FIMSE
      
      // Verifico se ele é ímpar, se for faço a soma
      SE ((i % 3) = 0) ENTAO
         somaImpares <- somaImpares + i
      FIMSE
      
      // Verifico se o "primeiro" é verdadeiro se for, já sei que esse comando esta executando pela primeira vez, pois
      // aqui dentro eu irei falar que "primeiro" é falso
      SE (primeiro = verdadeiro) ENTAO
         // primeiro agora é falso, para eu nao voltar nesse SE novamente, e também pra saber que é apenas o primeiro numero
         primeiro <- falso

         SE ((i % 33) = 0) ENTAO
            divisivel <- (numpcarac(i) + " é divisível por 33")
         SENAO
            divisivel <- (numpcarac(i) + " NÃO é divisível por 33")
         FIMSE
      FIMSE
      
   FIMPARA
   
   // Para fazer rodar esse programa, comente a linha 57 (abaixo) e a linha 28
   ESCREVAL("A) ", produto)
   ESCREVAL("B) ", multiplos7)
   ESCREVAL("C) ", somaImpares)
   ESCREVAL("D) ", divisivel)
fimalgoritmo
