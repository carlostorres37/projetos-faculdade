algoritmo "ex06"
// Função :
// Autor :
// Data : 7/6/2015
// Seção de Declarações 
var
   num:inteiro
   sair:caracter
inicio
      enquanto (sair <> "s") faca
           escreva("Digite um número: ")
           leia(num)
           
           se (num >= 20) e (num <= 90) entao
               escreval(num, " está compreendido entre 20 e 90!")
           senao
               escreval(num, " não está compreendido entre 20 e 90!")
           fimse
           
           repita
               escreva("Deseja sair? (S/N): ")
               leia(sair)
           ate (sair = "s") ou (sair = "n")
      fimenquanto
fimalgoritmo
