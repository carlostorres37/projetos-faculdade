algoritmo "ex7"
// Função : Crie um algoritmo que efetue o cálculo do salário líquido
//          de um professor. Serão fornecidos: valor da hora aula,
//          o número de aulas dadas no mês e percentual de desconto no
//          INSS. Se o professor ganhar mais que 10 salários mínimos
//          dizer que "Sortudo!", se ele receber entre 6 e 9 salários
//          mínimos, exibir a seguinte mensagem: "Um dia você chega lá!",
//          se receber menos que 6 salários mínimos você deverá exibir a
//          seguinte mensagem:  "Ah! Coitado!".
// Autor : Anton L. Mazon R. Rangel
// Data : 04/03/2015
// Seção de Declarações
var
   valor, desconto, sal_liquido, sal_minimo:real
   aulas:inteiro
inicio
      escreva("Valor da hora aula: ")
      leia(valor)
      escreva("Aulas dadas no mês: ")
      leia(aulas)
      escreva("Percentual de desconto no INSS (em centésimos): ")
      leia(desconto)
      
      sal_minimo <- 788
      sal_liquido <- (valor*aulas)-(valor*aulas*desconto)
      
      se ( sal_liquido > sal_minimo*10) entao
         escreval("Sortudo!")
      senao
          se (sal_liquido >= sal_minimo*6) e (sal_liquido <= sal_minimo*9) entao
             escreval("Um dia você chega lá!")
          senao
              se( sal_liquido < (sal_minimo*6) ) entao
                  escreva("Ah! Coitado!")
              fimse
          fimse
      fimse
fimalgoritmo
