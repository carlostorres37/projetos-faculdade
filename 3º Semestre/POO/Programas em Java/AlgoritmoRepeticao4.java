/*
 * Algoritmo
 *      escrever("Digite um número inteiro positivo: ")
 *      ler(valor)
 *      enquanto valor <= 0 faça
 *          escrever("Digite um número inteiro positivo: ")
 *          ler(valor)
 *      fim_enquanto
 *      escrever("Você digitou o número ", valor)
 * fim_algoritmo
 */

import java.util.Scanner;

class AlgoritmoRepeticao4 {
    public static void main(String[] args) {
        Scanner s;
        int valor;

        s = new Scanner(System.in);
        do
        {
            System.out.print("Digite um número inteiro positivo: ");
            valor = s.nextInt();
        }while(valor <= 0);
        System.out.println("Você digitou o número " + valor);
    }
}
