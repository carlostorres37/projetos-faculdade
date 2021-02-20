algoritmo "ex18"
// Função : Faça um programa que receba o custo de um espetaculo teatral
//          e o preço do convite desse esptaculo. Esse programa deve
//          calcular e mostrar a quantidade de convites que devem ser
//          vendidos para que pelo menos o custo do espetaculo seja
//          alcançado.
// Autor : Anton L. Mazon R. Rangel
// Data : 11/03/2015
// Seção de Declarações
var
   custo,convite,quant:real
inicio
      escreva("Custo do espetaculo: ")
      leia(custo)
      escreva("Preço do convite: ")
      leia(convite)
      
      quant <- custo/convite
      
      escreval()
      se (quant = int(quant)) entao
         escreval("Venda minima de convites: ", quant)
      senao
         escreval("Venda minima de convites: ", int(quant+1))
      fimse
fimalgoritmo
