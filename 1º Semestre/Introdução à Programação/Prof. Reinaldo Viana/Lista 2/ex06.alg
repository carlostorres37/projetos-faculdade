algoritmo "ex5"
// Fun��o : Fa�a um algoritmo que receba o sal�rio base, calcule e mostre:
//          - O imposto, conforme tabela a seguir:
//              Sal�rio Base         % Sobre o Sal�rio Base
//              < R$200,00                  Isento
//              Entre R$200,00 (inclusive)    3%
//                  e R$450,00 (inclusive)
//              Entre R$450,00 e R$700,00     8%
//              >=R$ 700,00                  12%
//          - O sal�rio l�quido, ou seja, o sal�rio base menos o imposto
//          - A categoria, conforme tabela a seguir:
//              Sal�rio L�quido            Classifica��o
//              At� R$350,00                      A
//              Entre R$350,00 e R$600,00         B
//              De R$600,00 para cima             C
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Se��o de Declara��es
var
   sal_b,sal_l,imposto:real
inicio
      escreva("Salario: ")
      leia(sal_b)
      
      se (sal_b < 0) entao
         escreval(sal_b," O cara ganha a oportunidade de ter mais divida!")
         interrompa
      senao
         se (sal_b >= 0) e (sal_b < 200) entao
            imposto <- 0
            escreval("Imposto: ISENTO")
         senao
            se (sal_b >= 200) e (sal_b <=450) entao
               imposto <- 0.03
               escreval("Imposto: ", imposto, "%")
            senao
               se (sal_b >450) e (sal_b <700) entao
                  imposto <- 0.08
                  escreval("Imposto: ", imposto, "%")
               senao
                  se (sal_b >= 700) entao
                     imposto <- 0.12
                     escreval("Imposto: ", imposto, "%")
                  fimse
               fimse
            fimse
         fimse
      fimse
      
      sal_l <- sal_b - (sal_b*imposto)
      escreval("Sal�rio liquido: ", sal_l)
      
      se (sal_l <=350) entao
         escreval("Categoria: A")
      senao
         se (sal_l > 350) e (sal_l < 600) entao
            escreval("Categoria: B")
         senao
            escreval("Categoria: C")
         fimse
      fimse
fimalgoritmo
