algoritmo "ex9"
// Função : Um endocrinologista deseja controlar a saúde de seus
//          pacientes, e para isso, se utiliza o índice de massa
//          corporal (IMC). Sabendo que o IMC é calculado através
//          da fórmula IMC=peso/altura², crie um algoritmo que
//          apresente o nome do paciente a faixa de risco, baseando
//           na seguinte tabela :

//          IMC	Faixa de Risco
//          Abaixo dos 20	Abaixo do peso
//          Entre 20 até 25	Normal
//          Entre 25 até 35	Excesso de peso
//          Entre 35 até 50	Obesidade
//          A partir dos 50	Obesidade Mórbida

// Autor : Anton L. Mazon R. Rangel
// Data : 04/03/2015
// Seção de Declarações
var
   nome:caracter
   peso,altura,risco:real
inicio
      escreva("Nome: ")
      leia(nome)
      escreva("Peso (Kg) : ")
      leia(peso)
      escreva("Altura (m): ")
      leia(altura)

      escreval()
      escreval("Nome: ", nome)
      escreva("Faixa de risco: ")
      risco <- peso / (altura^2)
      se (risco < 20) entao
         escreval("Abaixo do peso.")
      senao
         se (risco >= 20) e (risco < 25) entao
            escreval("Normal")
         senao
             se (risco >= 25) e (risco < 35) entao
                escreval("Excesso de peso")
             senao
                se (risco >= 35) e (risco < 50) entao
                   escreval("Obesidade")
                senao
                     se (risco >= 50) entao
                        escreval("Obesidade Mórbida")
                     fimse
                fimse
             fimse
         fimse
      fimse
      

fimalgoritmo
