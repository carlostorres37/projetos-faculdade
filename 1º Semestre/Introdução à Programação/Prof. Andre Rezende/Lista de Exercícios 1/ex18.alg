algoritmo "ex18"
// Fun��o : Fa�a um programa que receba o custo de um espetaculo teatral
//          e o pre�o do convite desse esptaculo. Esse programa deve
//          calcular e mostrar a quantidade de convites que devem ser
//          vendidos para que pelo menos o custo do espetaculo seja
//          alcan�ado.
// Autor : Anton L. Mazon R. Rangel
// Data : 11/03/2015
// Se��o de Declara��es
var
   custo,convite,quant:real
inicio
      escreva("Custo do espetaculo: ")
      leia(custo)
      escreva("Pre�o do convite: ")
      leia(convite)
      
      quant <- custo/convite
      
      escreval()
      se (quant = int(quant)) entao
         escreval("Venda minima de convites: ", quant)
      senao
         escreval("Venda minima de convites: ", int(quant+1))
      fimse
fimalgoritmo
