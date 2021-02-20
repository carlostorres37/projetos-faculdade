algoritmo "L3Ex15"
// Função :
// Autor :
// Data : 13/04/2015
// Seção de Declarações 
var
   num,maior,menor,i:inteiro
inicio
// Seção de Comandos 
      escreval("Informe um n°:")
      leia (num)
      menor <- num
      maior <- num
      para i de 1 ate 131 faca
           escreval ("informe um n°:")
           leia (num)
           se (num > maior) entao
              maior <- num
           fimse
           se (num < menor) entao
              menor <- num
           fimse
      fimpara
      escreval("A diferença entre o maior e o menor de todos resulta em:",maior-menor)
      
      
      
      
fimalgoritmo
