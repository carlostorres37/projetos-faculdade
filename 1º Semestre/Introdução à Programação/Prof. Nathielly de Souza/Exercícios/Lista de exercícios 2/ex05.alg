algoritmo "ex5"
// Função : Escreva um algoritmo que entre com um número e informe
//          se ele divisível por 3 e por 7.
// Autor : Anton L. Mazon R. Rangel
// Data : 04/03/2015
// Seção de Declarações
var
   num:inteiro
inicio
      escreva("Digite um número: ")
      leia(num)

      se ( ((num MOD 3) = 0) e ((num MOD 7) = 0)) entao
          escreval(num, " é divisível por 3 e por 7")
      senao
          escreval(num, " não é divisível por 3 e por 7")
      fimse
fimalgoritmo
