algoritmo "ex14
// Fun��o : O custo ao consumidor de um carro novo � a soma do pre�o de
//          fabrica com o percentual de lucro do distribuidor e dos
//          impostos aplicados ao pre�o de fabrica. Fa�a um programa
//          que receba o pre�o de fabrica de um veiculo, o percentual
//          de lucro do distribuidor e o percentual de imposotos.
//          Calcule e mostre:
//          a) o valor correspondente ao lucro do distribuidor
//          b) o valor correspondente aos impostos
//          c) o pre�o final do veiculo
// Autor : Anton L. Mazon R. Rangel
// Data : 11/03/2015
// Se��o de Declara��es
var
   preco_f,lucro_p,imposto_p,lucro,imposto:real
inicio
      escreva("Pre�o de fabrica: ")
      leia(preco_f)
      escreva("Percentual de lucro do distribuidor: ")
      leia(lucro_p)
      escreva("Percentual de impostos: ")
      leia(imposto_p)
      
      lucro_p <- lucro_p/100
      imposto_p <- imposto_p/100
      
      lucro <- preco_f*lucro_p
      escreval()
      escreval("Lucro do distribuidor: ", lucro)
      
      imposto <- preco_f*imposto_p
      escreval("Impostos: ", imposto)
      
      escreval("Pre�o final: ", preco_f+lucro+imposto)
fimalgoritmo
