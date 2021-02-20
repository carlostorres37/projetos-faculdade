/*
 * Função menor(a, b)
 *      se a < b então
 *          retornar(a)
 *      senão
 *          retornar(b)
 * fim_função
 *
 * Algoritmo
 *      escrever("Digite o primeiro número em ponto flutuante: ")
 *      ler(num1)
 *      escrever("Digite o segundo número em ponto flutuante: ")
 *      ler(num2)
 *      escrever("Digite o terceiro número em ponto flutuante: ")
 *      ler(num3)
 *      min <- menor(num1, num2)
 *      min <- menor(min, num3)
 *      escrever("O menor é ", min)
 * fim_algoritmo
 */

import java.util.Scanner;

class AlgoritmoSelecao4 {
    static float menor(float a, float b) {
        if(a < b)
            return a;
        else
            return b;
    }
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
        min = menor(num1, num2);
        min = menor(min, num3);
//        min = menor(menor(num1, num2), num3);
        System.out.println("O menor é " + min);
//        System.out.println("O menor é " + menor(menor(num1, num2), num3));
    }
}
