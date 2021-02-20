algoritmo "L3Ex14"
// Função :
// Autor :
// Data : 13/04/2015
// Seção de Declarações 
var
   num,maior,menor,i:inteiro
inicio
// Seção de Comandos
      escreval("informe um número: ")
      leia(num)
      maior <- num
      menor <- num
      para i de 1 ate 5 faca
           escreval("informe um número: ")
           leia (num)
           se (num > maior) entao
              maior <- num
           fimse
           se (num < menor) entao
              menor <- num
           fimse
           fimpara
           escreval("o maior é:",maior)
           escreval("o menor é:",menor)



 
fimalgoritmo

