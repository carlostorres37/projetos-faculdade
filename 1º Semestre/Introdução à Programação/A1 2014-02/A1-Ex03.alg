algoritmo "A1-Ex03"
// Função :
// Autor :
// Data : 18/04/2015
// Seção de Declarações 
var
   i,soma,num_total,num,maior,menor: inteiro
inicio
   // Seção de Comandos
   ESCREVA("Entre com a quantidade de números que será digitado:")
   LEIA(num_total)
   PARA i de 1 ATE num_total FACA
      // Recebo o numero digitado
      ESCREVA("Entre com um número:")
      LEIA(num)
      // Aqui já faço a soma pra dividir no final pela contidade de numeros pra achar a média
      soma <- soma + num
      
      // Verifico se to entrando pela primeira vez no PARA, se sim, falo que o "menor" e "maior" vai receber o número que o usuario digitar
      SE (i = 1) ENTAO
         maior <- num
         menor <- num
      FIMSE
      
      // Verifico se for menor salvo o numero digitado como menor
      SE (num < menor) ENTAO
         menor <- num
      FIMSE
      
      // Verifico se for maior salvo o numero digitado como maior
      SE (num > maior) ENTAO
         maior <- num
      FIMSE

   FIMPARA

   // Agora mostro os resultados
   ESCREVAL("")
   ESCREVAL("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
   ESCREVAL("Quantidade de números digitados: ", num_total)
   ESCREVAL("Maior número digittado: ", maior)
   ESCREVAL("Menor número digitado: ", menor)
   ESCREVAL("Média dos números digitados: ", (soma/num_total))
   ESCREVAL("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
fimalgoritmo
