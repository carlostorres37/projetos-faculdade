/*
 * Algoritmo
 *      escrever("Digite um número inteiro: ")
 *      ler(min)
 *      escrever("Digite outro número inteiro: ")
 *      ler(max)
 *      se min > max então
 *          num <- min
 *          min <- max
 *          max <- num
 *      fim_se
 *      soma <- 0
 *      num <- min
 *      enquanto num <= max faça
 *          soma <- soma + num
 *          num <- num + 1
 *      fim_enquanto
 *      escrever("O somatório é igual a ", soma)
 * fim_algoritmo
 */

import java.util.Scanner;

class AlgoritmoRepeticao2 {
    public static void main(String[] args) {
        Scanner s;
        int soma, num, min, max;

        s = new Scanner(System.in);
        System.out.print("Digite um número inteiro: ");
        min = s.nextInt();
        System.out.print("Digite outro número inteiro: ");
        max = s.nextInt();
        if(min > max)
        {
            num = min;
            min = max;
            max = num;
        }
        soma = 0;
        num = min;
        while(num <= max)
        {
            soma = soma + num;
            num = num + 1;
        }
        System.out.println("O somatório de " + min + " até " + max +
                " é igual a " + soma);
    }
}
