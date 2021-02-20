algoritmo "ex3"
// Função : Em uma empresa XPTO, o contrato de trabalho define o
//          número de horas que devem ser trabalhas em uma semana,
//          e com base nisto é definido o regime de trabalho que o
//          colaborador possui junto à empresa. O salário do colaborador
//          é calculado através do produto entre o número de horas
//          trabalhas e o número de dias trabalhados naquele mês.
//          Com base no quadro 1 e nas informações acima,
//          escreva um programa em português estruturado (Portugol) que
//          imprima o regime de trabalho e o salário de um colaborador..

//          Horas de trabalho	                 Regime
//             Até 20 horas	    Cargos sem vínculo empregatício
//          Entre 20 e 30 horas 	 Cargos de dedicação parcial
//          Entre 30 e 40 horas	 Cargos de dedicação exclusiva
//           Acima de 40 horas 	 Cargos comissionados
//               Quadro 1  - horas trabalho x regime
// Autor : Anton L. Mazon R. Rangel
// Data : 04/03/2015
// Seção de Declarações
var
   hContrato, dTrab:inteiro
   hTrab, sal:real
   regime:caracter
inicio
      escreva("Número de horas de trabalho do colaborador no contrato: ")
      leia(hContrato)
      escreva("Número de horas trabalhadas: ")
      leia(hTrab)
      escreva("Número de dias trabalhados: ")
      leia(dTrab)
      
      se( hContrato <= 20) entao
          regime <- "Cargos sem vínculo empragatício."
      senao
           se( (hContrato > 20) e (hContrato <= 30) ) entao
               regime <- "Cargos de dedicação parcial."
           senao
                se( (hContrato > 30) e (hContrato <= 40) ) entao
                    regime <- "Cargos de dedicação exclusiva."
                senao
                     se( hContrato > 40 ) entao
                         regime <- "Cargos comissionados."
                     fimse
                fimse
           fimse
      fimse
      escreval("Regime : ", regime)
      
      sal <- hTrab * dTrab
      escreval("Salário: ", sal)
      

fimalgoritmo
