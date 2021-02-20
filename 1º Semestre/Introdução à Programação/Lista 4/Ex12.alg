algoritmo "ex12"
// Função :
// Autor :
// Data : 7/6/2015
// Seção de Declarações 
var
   op, filhos:inteiro
   sal, sal_media, sal_maior, sal_minimo, sal_menor, filhos_media:real
   sair:caracter
inicio
      sal_maior <- -1
      enquanto (op <= 5000000) e (sair <> "s") faca
            op <- op + 1
            escreva("Digite o salário do ",op,"º habitante         : ")
            leia(sal)
            escreva("Digite o número de filhos do ",op,"º habitante: ")
            leia(filhos)
            
            sal_media <- sal_media + sal
            filhos_media <- filhos_media + filhos
            
            se (sal > sal_maior) entao
                sal_maior <- sal
            fimse
            
            se (sal < 788) entao
                sal_menor <- sal_menor + 1
            fimse
            
            repita
                escreva("Deseja sair? (S/N): ")
                leia(sair)
            ate (sair = "s") ou (sair = "n")
      fimenquanto
      
      escreval("Média de salário da população                               : R$", sal_media / op)
      escreval("Média do número de filhos                                   : ", filhos_media / op, " filho(s)/habitante")
      escreval("Maior salário dos habitantes                                : R$", sal_maior)
      escreval("Percentual de pessoas com salário menor que o salário mínimo: ", (sal_menor * 100)/op)
fimalgoritmo
