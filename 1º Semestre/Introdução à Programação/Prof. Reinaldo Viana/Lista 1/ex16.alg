algoritmo "ex16"
// Fun��o : Desenvolva um algoritmo que receba o sal�rio base de um
//          funcion�rio, calcule e mostre o sal�rio a receber,
//          sabendo-se que o funcion�rio tem gratifica��o de 5%
//          sobre o sal�rio base e para imposto de 7% tamb�m sobre
//          o sal�rio base.
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Se��o de Declara��es
var
   s:real
inicio
      escreva("Sal�rio: ")
      leia(s)
      
      escreval()
      escreval("Sal�rio a receber: R$", s+(s*0.05)-(s*0.07))
fimalgoritmo
