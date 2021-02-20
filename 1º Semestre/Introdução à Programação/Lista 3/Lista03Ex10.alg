algoritmo "LêNumImprimeTodosInteirosde1AteNumCasoMultiplosde3ou5"
var
 n,i:inteiro
inicio
   Escreval("Digite um número")
   Leia(n)
   para i de 1 ate n passo 1 faca
     se (i%3=0)  entao
        Escreval(i, " atende ao critério, pois é múltiplo de 3")
     fimse
     se (i%5=0)  entao
        Escreval(i, " atende ao critério, pois é múltiplo de 5")
     fimse
   fimpara
fimalgoritmo
