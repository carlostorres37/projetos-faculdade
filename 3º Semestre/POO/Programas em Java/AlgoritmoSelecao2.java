/*
 * Algoritmo
 *      escrever("Digite o primeiro número em ponto flutuante: ")
 *      ler(num1)
 *      escrever("Digite o segundo número em ponto flutuante: ")
 *      ler(num2)
 *      escrever("Digite o terceiro número em ponto flutuante: ")
 *      ler(num3)
 *      se num1 < num2 então
 *          se num1 < num3 então
 *              min <- num1
 *          senão
 *              min <- num3
 *          fim_se
 *      senão
 *          se num2 < num3 então
 *              min <- num2
 *          senão
 *              min <- num3
 *          fim_se
 *      fim_se
 *      escrever("O menor é ", min)
 * fim_algoritmo
 */

import java.util.Scanner;

class AlgoritmoSelecao2 {
    public static void main(String[] argumentos) {
        Scanner s;
        float num1, num2, num3, min;

        s = new Scanner(System.in);
        System.out.print("Digite o primeiro número em ponto flutuante: ");
        num1 = s.nextFloat();
        System.out.print("Digite o segundo número em ponto flutuante: ");
        num2 = s.nextFloat();
        System.out.print("Digite o terceiro número em ponto flutuante: ");
        num3 = s.nextFloat();
        if(num1 < num2)
            if(num1 < num3)
                min = num1;
            else
                min = num3;
        else
            if(num2 < num3)
                min = num2;
            else
                min = num3;
        System.out.println("O menor é " + min);
    }
}
