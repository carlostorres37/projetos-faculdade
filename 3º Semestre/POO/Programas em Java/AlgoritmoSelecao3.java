/*
 * Algoritmo
 *      escrever("Digite o primeiro número em ponto flutuante: ")
 *      ler(num1)
 *      escrever("Digite o segundo número em ponto flutuante: ")
 *      ler(num2)
 *      escrever("Digite o terceiro número em ponto flutuante: ")
 *      ler(num3)
 *      se num3 < num2 então
 *          aux <- num3
 *          num3 <- num2
 *          num2 <- aux
 *      fim_se
 *      se num2 < num1 então
 *          aux <- num2
 *          num2 <- num1
 *          num1 <- aux
 *      fim_se
 *      escrever("O menor é ", num1)
 * fim_algoritmo
 */

import java.util.Scanner;

class AlgoritmoSelecao3 {
    public static void main(String[] argumentos) {
        Scanner s;
        float num1, num2, num3, aux;

        s = new Scanner(System.in);
        System.out.print("Digite o primeiro número em ponto flutuante: ");
        num1 = s.nextFloat();
        System.out.print("Digite o segundo número em ponto flutuante: ");
        num2 = s.nextFloat();
        System.out.print("Digite o terceiro número em ponto flutuante: ");
        num3 = s.nextFloat();
        if(num3 < num2)
        {
            aux = num3;
            num3 = num2;
            num2 = aux;
        }
        if(num2 < num1)
        {
            aux = num2;
            num2 = num1;
            num1 = aux;
        }
        System.out.println("O menor é " + num1);
    }
}
