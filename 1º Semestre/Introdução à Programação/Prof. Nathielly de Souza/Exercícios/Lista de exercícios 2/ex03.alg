algoritmo "ex3"
// Fun��o : Em uma empresa XPTO, o contrato de trabalho define o
//          n�mero de horas que devem ser trabalhas em uma semana,
//          e com base nisto � definido o regime de trabalho que o
//          colaborador possui junto � empresa. O sal�rio do colaborador
//          � calculado atrav�s do produto entre o n�mero de horas
//          trabalhas e o n�mero de dias trabalhados naquele m�s.
//          Com base no quadro 1 e nas informa��es acima,
//          escreva um programa em portugu�s estruturado (Portugol) que
//          imprima o regime de trabalho e o sal�rio de um colaborador..

//          Horas de trabalho	                 Regime
//             At� 20 horas	    Cargos sem v�nculo empregat�cio
//          Entre 20 e 30 horas 	 Cargos de dedica��o parcial
//          Entre 30 e 40 horas	 Cargos de dedica��o exclusiva
//           Acima de 40 horas 	 Cargos comissionados
//               Quadro 1  - horas trabalho x regime
// Autor : Anton L. Mazon R. Rangel
// Data : 04/03/2015
// Se��o de Declara��es
var
   hContrato, dTrab:inteiro
   hTrab, sal:real
   regime:caracter
inicio
      escreva("N�mero de horas de trabalho do colaborador no contrato: ")
      leia(hContrato)
      escreva("N�mero de horas trabalhadas: ")
      leia(hTrab)
      escreva("N�mero de dias trabalhados: ")
      leia(dTrab)
      
      se( hContrato <= 20) entao
          regime <- "Cargos sem v�nculo empragat�cio."
      senao
           se( (hContrato > 20) e (hContrato <= 30) ) entao
               regime <- "Cargos de dedica��o parcial."
           senao
                se( (hContrato > 30) e (hContrato <= 40) ) entao
                    regime <- "Cargos de dedica��o exclusiva."
                senao
                     se( hContrato > 40 ) entao
                         regime <- "Cargos comissionados."
                     fimse
                fimse
           fimse
      fimse
      escreval("Regime : ", regime)
      
      sal <- hTrab * dTrab
      escreval("Sal�rio: ", sal)
      

fimalgoritmo
