algoritmo "PositivoNegativoNeutro"
var
 i,num: inteiro
inicio
 para i de 1 ate 231 passo 1 faca
   Escreval("Informe um n�mero:")
   Leia(num)
   se (num=0) entao
     Escreval(num," � neutro")
   senao
    se (num>0) entao
      escreval(num," � positivo")
    senao
      escreval(num," � negativo")
    Fimse
   Fimse
 fimpara
fimalgoritmo
