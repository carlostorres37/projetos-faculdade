algoritmo "ex7"
// Fun��o : Crie um algoritmo que efetue o c�lculo do sal�rio l�quido
//          de um professor. Ser�o fornecidos: valor da hora aula,
//          o n�mero de aulas dadas no m�s e percentual de desconto no
//          INSS. Se o professor ganhar mais que 10 sal�rios m�nimos
//          dizer que "Sortudo!", se ele receber entre 6 e 9 sal�rios
//          m�nimos, exibir a seguinte mensagem: "Um dia voc� chega l�!",
//          se receber menos que 6 sal�rios m�nimos voc� dever� exibir a
//          seguinte mensagem:  "Ah! Coitado!".
// Autor : Anton L. Mazon R. Rangel
// Data : 04/03/2015
// Se��o de Declara��es
var
   valor, desconto, sal_liquido, sal_minimo:real
   aulas:inteiro
inicio
      escreva("Valor da hora aula: ")
      leia(valor)
      escreva("Aulas dadas no m�s: ")
      leia(aulas)
      escreva("Percentual de desconto no INSS (em cent�simos): ")
      leia(desconto)
      
      sal_minimo <- 788
      sal_liquido <- (valor*aulas)-(valor*aulas*desconto)
      
      se ( sal_liquido > sal_minimo*10) entao
         escreval("Sortudo!")
      senao
          se (sal_liquido >= sal_minimo*6) e (sal_liquido <= sal_minimo*9) entao
             escreval("Um dia voc� chega l�!")
          senao
              se( sal_liquido < (sal_minimo*6) ) entao
                  escreva("Ah! Coitado!")
              fimse
          fimse
      fimse
fimalgoritmo
