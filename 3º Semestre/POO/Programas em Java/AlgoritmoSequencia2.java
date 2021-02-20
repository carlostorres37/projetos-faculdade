/*
 * Algoritmo
 *      escrever("Digite a primeira nota: ")
 *      ler(nota1)
 *      escrever("Digite a segunda nota: ")
 *      ler(nota2)
 *      media <- (nota1 + nota2) / 2
 *      escrever("A média é: ", media)
 * fim_algoritmo
 */

import java.util.Scanner;

class AlgoritmoSequencia2 {
    public static void main(String[] argumentos) {
        Scanner s;
        double nota1, nota2, media;

        s = new Scanner(System.in);
        System.out.print("Digite a primeira nota: ");
        nota1 = s.nextDouble();
        System.out.print("Digite a segunda nota: ");
        nota2 = s.nextDouble();
        media = (nota1 + nota2) / 2;
        System.out.println("A média é: " + media);
    }
}
