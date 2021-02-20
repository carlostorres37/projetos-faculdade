algoritmo "ex6"
// Função : Refaça o algoritmo 2, considerando porém, a idade de
//          maioridade 18 anos para homens e 21 para mulheres.
// Autor : Anton L. Mazon R. Rangel
// Data : 04/03/2015
// Seção de Declarações
var
   idade:inteiro
   sexo:caracter
inicio
      escreva("Digite a idade     : ")
      leia(idade)
      escreva("Digite o sexo (M/F): ")
      leia(sexo)

      se (sexo = "M") entao
         se (idade >= 18) entao
            escreva("É de maior!")
         senao
            escreva("Não é de maior!")
         fimse
      senao
         se (idade >= 21) entao
            escreva("É de maior!")
         senao
            escreva("Não é de maior!")
         fimse
      fimse
fimalgoritmo
