algoritmo "ex08"
// Função :
// Autor :
// Data : 7/6/2015
// Seção de Declarações 
var
   fimloop:caracter
   num,par,impar:inteiro
inicio
      enquanto (fimloop <> "sair") faca
           escreva("Digite um número: ")
           leia(num)
           
           se (num % 2 = 0) entao
               par <- par + 1
           senao
               impar <- impar + 1
           fimse
           

           escreval(" --- PARA SAIR DIGITE sair PARA A VARIÁEL fimloop  ---")
           escreva("fimloop <- ")
           leia(fimloop)
      fimenquanto
      
      escreval("Percentual de números pares inseridos : ", (100*par)/(par+impar),"%")
      escreval("Percentual de núeros ímpares inseridos: ", (100*impar)/(par+impar), "%")
fimalgoritmo
