algoritmo "PositivoNegativoNeutro"
var
 i,num: inteiro
inicio
 para i de 1 ate 231 passo 1 faca
   Escreval("Informe um número:")
   Leia(num)
   se (num=0) entao
     Escreval(num," é neutro")
   senao
    se (num>0) entao
      escreval(num," é positivo")
    senao
      escreval(num," é negativo")
    Fimse
   Fimse
 fimpara
fimalgoritmo
