algoritmo "ex4"
// Fun��o : Escreva um algoritmo que entre diga se o n�mero digitado
//          est� ou n�o compreendido entre 20 e 90.
// Autor : Anton L. Mazon R. Rangel
// Data : 04/03/2015
// Se��o de Declara��es
var
   num:real
inicio
      escreva("Digite um n�mero: ")
      leia(num)
      
      se( (num >=20 ) e (num <= 90) ) entao
          escreval(num, " esta entre 20 e 90!")
      senao
           escreval(num, " n�o esta entre 20 e 90")
      fimse
fimalgoritmo
