algoritmo "ex14
// Função : O custo ao consumidor de um carro novo é a soma do preço de
//          fabrica com o percentual de lucro do distribuidor e dos
//          impostos aplicados ao preço de fabrica. Faça um programa
//          que receba o preço de fabrica de um veiculo, o percentual
//          de lucro do distribuidor e o percentual de imposotos.
//          Calcule e mostre:
//          a) o valor correspondente ao lucro do distribuidor
//          b) o valor correspondente aos impostos
//          c) o preço final do veiculo
// Autor : Anton L. Mazon R. Rangel
// Data : 11/03/2015
// Seção de Declarações
var
   preco_f,lucro_p,imposto_p,lucro,imposto:real
inicio
      escreva("Preço de fabrica: ")
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
      
      escreval("Preço final: ", preco_f+lucro+imposto)
fimalgoritmo
