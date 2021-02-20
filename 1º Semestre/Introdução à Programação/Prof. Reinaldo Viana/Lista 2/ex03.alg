algoritmo "ex3"
// Função : Uma empresa decide dar um aumento de 30% aos funcionários
//          com salário inferiores a R$850,00. Faça um algoritmo que
//          receba o salário do funcionário e mostre o valor do salário
//          reajustado ou uma mensagem, caso ele não tenha direito ao
//          aumento.
// Autor : Anton L. Mazon R. Rangel
// Data : 10/03/2015
// Seção de Declarações
var
   s:real
inicio
   escreva("Salario: ")
   leia(s)
   
   se (s < 850) entao
      escreval("Reajuste salarial: ", s+(s*0.3))
   senao
      escreval("Não atende ao requesitos para o reajuste salarial!")
   fimse
fimalgoritmo
