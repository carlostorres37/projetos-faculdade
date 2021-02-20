algoritmo "ex12"
// Função : Faça um algoritmo que leia 3 números e os chame por
//          a, b, c  e imprima:
//              a)	quais são divisíveis por 2 e por 4
//              b)	quais estão compreendidos entre 100  e 1000
//              c)	verifique se existe igualdade entre os números lidos
// Autor : Anton L. Mazon R. Rangel
// Data : 04/03/2015
// Seção de Declarações
var
   a,b,c:inteiro
inicio
      escreva("Digite o 1º número: ")
      leia(a)
      escreva("Digite o 2º número: ")
      leia(b)
      escreva("Digite o 3º número: ")
      leia(c)
      
      escreval()
      escreval(" a) ")
      se (a%2<>0) e (a%4<>0) e (b%2<>0) e (b%4<>0) e (c%2<>0) e (c%4<>0) entao
         escreval("Nenhum número é divisível por 2 e por 4!")
      senao
         se (a % 2 = 0) e (a % 4 = 0) entao
            escreval(a, " é divisível por 2 e por 4")
         fimse
         se (b % 2 = 0) e (b % 4 = 0) entao
            escreval(b, " é divisível por 2 e por 4")
         fimse
         se (c % 2 = 0) e (c % 4 = 0) entao
            escreval(c, " é divisível por 2 e por 4")
         fimse
      fimse
      
      escreval()
      escreval(" b) ")
      se (a<100) e (a>1000) e (b<100) e (b>1000) e (c<100) e (c>1000) entao
         escreval("Nenhum número esta compreendido entre 100  e 1000!")
      senao
         se (a >= 100) e (a <= 1000) entao
            escreval(a, " esta compreendido entre 100  e 1000")
         fimse
         se (b >= 100) e (b <= 1000) entao
            escreval(b, " esta compreendido entre 100  e 1000")
         fimse
         se (c >= 100) e (c <= 1000) entao
            escreval(c, " esta compreendido entre 100  e 1000")
         fimse
      fimse
      
      escreval()
      escreval(" c) ")
      se (a <> b) e (b <> c) e (c <> a) entao
         escreval("Não existe igualdade entre os números!")
      senao
         se (a = b) entao
            escreval("O primeiro número", a, " é igual ao segundo número", b)
         fimse
         se (b = c) entao
            escreval("O segundo número", b, " é igual ao terceiro número", c)
         fimse
         se (a = c) entao
            escreval("O primeiro número", a, " é igual ao terceiro número", c)
         fimse
      fimse
fimalgoritmo
