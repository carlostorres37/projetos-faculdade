algoritmo "ex11"
// Função :
// Autor :
// Data : 7/6/2015
// Seção de Declarações 
var
   op,num,produto:inteiro
   sair:caracter
inicio
      op <- 1
      produto <- 1
      enquanto (op <= 12) e (sair <> "verdadeiro") faca
            escreva("Digite o ",op,"º número: ")
            leia(num)
            produto <- produto * num

            escreva("Para sair digite VERDADEIRO: ")
            leia(sair)
            
            op <- op + 1
      fimenquanto
      
      escreval("Produto dos números lidos: ", produto)
fimalgoritmo
