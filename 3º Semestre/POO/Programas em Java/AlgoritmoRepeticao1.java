/*
 * Algoritmo
 *      soma <- 0
 *      num <- 1
 *      enquanto num <= 100 faça
 *          soma <- soma + num
 *          num <- num + 1
 *      fim_enquanto
 *      escrever("O somatório é igual a ", soma)
 * fim_algoritmo
 */

class AlgoritmoRepeticao1 {
    public static void main(String[] args) {
        int soma, num;

        soma = 0;
        num = 1;
        while(num <= 100)
        {
            soma = soma + num;
            num = num + 1;
        }
        System.out.println("O somatório é igual a " + soma);
    }
}
