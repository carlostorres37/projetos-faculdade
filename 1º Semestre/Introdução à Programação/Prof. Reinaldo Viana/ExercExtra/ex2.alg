algoritmo "ex2"
// Fun��o : 2) O que ser� impresso depois de executado o algoritmo
//             seguinte se:
//             a) num=10
//                R.: N�mero Positivo
//             b) num=0
//                R.: Zero
//             c)num=-4?
//                R.: N�mero Negativo
// Autor : Anton L. Mazon R. Rangel
// Data : 30/03/2015
// Se��o de Declara��es 
var
   quale:caracter
   num:inteiro
inicio
      escreval("Digite um n�mero inteiro: ")
      leia(num)
      
      se (num>0) entao
         quale <- "N�mero Positivo"
      senao
         se (num<0) entao
            quale <- "N�mero Negativo"
         senao
            quale <- "Zero"
         fimse
      fimse

      escreval(quale)
fimalgoritmo
