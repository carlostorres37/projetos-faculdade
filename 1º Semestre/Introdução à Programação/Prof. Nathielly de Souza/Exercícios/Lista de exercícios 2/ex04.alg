algoritmo "ex4"
// Função : Escreva um algoritmo que entre diga se o número digitado
//          está ou não compreendido entre 20 e 90.
// Autor : Anton L. Mazon R. Rangel
// Data : 04/03/2015
// Seção de Declarações
var
   num:real
inicio
      escreva("Digite um número: ")
      leia(num)
      
      se( (num >=20 ) e (num <= 90) ) entao
          escreval(num, " esta entre 20 e 90!")
      senao
           escreval(num, " não esta entre 20 e 90")
      fimse
fimalgoritmo
