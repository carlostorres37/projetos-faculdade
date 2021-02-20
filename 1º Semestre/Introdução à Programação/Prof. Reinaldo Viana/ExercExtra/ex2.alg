algoritmo "ex2"
// Função : 2) O que será impresso depois de executado o algoritmo
//             seguinte se:
//             a) num=10
//                R.: Número Positivo
//             b) num=0
//                R.: Zero
//             c)num=-4?
//                R.: Número Negativo
// Autor : Anton L. Mazon R. Rangel
// Data : 30/03/2015
// Seção de Declarações 
var
   quale:caracter
   num:inteiro
inicio
      escreval("Digite um número inteiro: ")
      leia(num)
      
      se (num>0) entao
         quale <- "Número Positivo"
      senao
         se (num<0) entao
            quale <- "Número Negativo"
         senao
            quale <- "Zero"
         fimse
      fimse

      escreval(quale)
fimalgoritmo
