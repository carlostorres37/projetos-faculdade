algoritmo "500NumDivisiveisPor4MenoresQue20"

var
 i,n: inteiro
inicio
 para i de 1 ate 500 passo 1 faca
    Escreval("Digite um número")
    Leia(n)
    Se (n%4=0) e (n<20) entao
     Escreval(n," atende ao critério")
    senao
     Escreval(n," não atende ao critério")
    Fimse
 fimpara
fimalgoritmo
