algoritmo "ex12"
// Fun��o : Desenvolva um algoritmo que receba o c�digo correspondente
//          ao cargo de um funcion�rio e seu sal�rio atual e mostre o
//          cargo, o valor do aumento e seu novo sal�rio. Os cargos
//          est�o na tabela a seguir:
//               C�DIGO       CARGO       PERCENTUAL
//                  1      ESCRITUR�RIO      50%
//                  2      SERET�RIO         35%
//                  3      CAIXA             20%
//                  4      GERENTE           10%
//                  5      DIRETOR           N�O TEM AUMENTO
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Se��o de Declara��es
var
   co:inteiro
   sal:real
inicio
      escreva("C�digo do funcionario: ")
      leia(co)
      escreva("Salario do funcionario: ")
      leia(sal)
      
      escreval()
      se (co = 1) ou (co = 2) ou (co = 3) ou (co = 4) ou (co = 5) entao
         se(co = 1) entao
               escreval("Cargo: Escritur�rio")
               escreval("Aumento: 50%")
               escreval("Novo salario: ", sal+(sal*0.5))
         senao
              se(co = 2) entao
                    escreval("Cargo: Secret�rio")
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
                                   escreval("Aumento: N�O TEM AUMENTO")
                                   escreval("Novo salario: ", sal)
                             fimse
                        fimse
                   fimse
              fimse
         fimse
      senao
         escreval("C�digo de funcionario invalido!")
      fimse
fimalgoritmo
