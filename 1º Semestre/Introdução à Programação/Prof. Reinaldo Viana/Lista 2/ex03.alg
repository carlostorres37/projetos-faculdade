algoritmo "ex3"
// Fun��o : Uma empresa decide dar um aumento de 30% aos funcion�rios
//          com sal�rio inferiores a R$850,00. Fa�a um algoritmo que
//          receba o sal�rio do funcion�rio e mostre o valor do sal�rio
//          reajustado ou uma mensagem, caso ele n�o tenha direito ao
//          aumento.
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Se��o de Declara��es
var
   s:real
inicio
   escreva("Salario: ")
   leia(s)
   
   se (s < 850) entao
      escreval("Reajuste salarial: ", s+(s*0.3))
   senao
      escreval("N�o atende ao requesitos para o reajuste salarial!")
   fimse
fimalgoritmo
