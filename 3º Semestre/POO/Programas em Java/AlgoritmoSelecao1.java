/*
 * Algoritmo
 *      escrever("Digite o primeiro inteiro: ")
 *      ler(num1)
 *      escrever("Digite o segundo inteiro: ")
 *      ler(num2)
 *      se num1 < num2 então
 *          escrever("O menor é ", num1)
 *      senão
 *          escrever("O menor é ", num2)
 *      fim_se
 * fim_algoritmo
 */

import java.util.Scanner;

class AlgoritmoSelecao1 {
    public static void main(String[] argumentos) {
        Scanner s;
        int num1, num2;

        s = new Scanner(System.in);
        System.out.println("Digite o primeiro inteiro: ");
        num1 = s.nextInt();
        System.out.println("Digite o segundo inteiro: ");
        num2 = s.nextInt();
        if(num1 < num2)
            System.out.println("O menor é " + num1);
        else
            System.out.println("O menor é " + num2);
    }
}
