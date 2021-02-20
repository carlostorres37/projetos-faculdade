algoritmo "ex12"
// Função : Desenvolva um algoritmo que receba o código correspondente
//          ao cargo de um funcionário e seu salário atual e mostre o
//          cargo, o valor do aumento e seu novo salário. Os cargos
//          estão na tabela a seguir:
//               CÓDIGO       CARGO       PERCENTUAL
//                  1      ESCRITURÁRIO      50%
//                  2      SERETÁRIO         35%
//                  3      CAIXA             20%
//                  4      GERENTE           10%
//                  5      DIRETOR           NÃO TEM AUMENTO
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Seção de Declarações
var
   co:inteiro
   sal:real
inicio
      escreva("Código do funcionario: ")
      leia(co)
      escreva("Salario do funcionario: ")
      leia(sal)
      
      escreval()
      se (co = 1) ou (co = 2) ou (co = 3) ou (co = 4) ou (co = 5) entao
         se(co = 1) entao
               escreval("Cargo: Escriturário")
               escreval("Aumento: 50%")
               escreval("Novo salario: ", sal+(sal*0.5))
         senao
              se(co = 2) entao
                    escreval("Cargo: Secretário")
                    escreval("Aumento: 35%")
                    escreval("Novo salario: ", sal+(sal*0.35))
              senao
                   se(co = 3) entao
                         escreval("Cargo: Caixa")
                         escreval("Aumento: 20%")
                         escreval("Novo salario: ", sal+(sal*0.2))
                   senao
                        se(co = 4) entao
                              escreval("Cargo: Gerente")
                              escreval("Aumento: 10%")
                              escreval("Novo salario: ", sal+(sal*0.1))
                        senao
                             se(co = 5) entao
                                   escreval("Cargo: Diretor")
                                   escreval("Aumento: NÃO TEM AUMENTO")
                                   escreval("Novo salario: ", sal)
                             fimse
                        fimse
                   fimse
              fimse
         fimse
      senao
         escreval("Código de funcionario invalido!")
      fimse
fimalgoritmo
