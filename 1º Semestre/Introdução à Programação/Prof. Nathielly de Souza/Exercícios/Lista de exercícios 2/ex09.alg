algoritmo "ex9"
// Fun��o : Um endocrinologista deseja controlar a sa�de de seus
//          pacientes, e para isso, se utiliza o �ndice de massa
//          corporal (IMC). Sabendo que o IMC � calculado atrav�s
//          da f�rmula IMC=peso/altura�, crie um algoritmo que
//          apresente o nome do paciente a faixa de risco, baseando
//           na seguinte tabela :

//          IMC	Faixa de Risco
//          Abaixo dos 20	Abaixo do peso
//          Entre 20 at� 25	Normal
//          Entre 25 at� 35	Excesso de peso
//          Entre 35 at� 50	Obesidade
//          A partir dos 50	Obesidade M�rbida

// Autor : Anton L. Mazon R. Rangel
// Data : 04/03/2015
// Se��o de Declara��es
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
                        escreval("Obesidade M�rbida")
                     fimse
                fimse
             fimse
         fimse
      fimse
      

fimalgoritmo
