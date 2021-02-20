/*
 * Algoritmo
 *      escrever("Digite y ou Y ou n ou N: ")
 *      ler(letra)
 *      se letra = 'y' ou letra = 'Y' então
 *          escrever("Yes!")
 *      senão
 *          se letra = 'n' ou letra = 'N' então
 *              escrever("No!")
 *          fim_se
 *      fim_se
 * fim_algoritmo
 */

import java.util.Scanner;

class AlgoritmoSelecao8 {
    public static void main(String[] argumentos) {
        Scanner s;
        char letra;
        String palavra;

        s = new Scanner(System.in);
        System.out.print("Digite y ou Y ou n ou N: ");
        palavra = s.next();
        letra = palavra.charAt(0);
        switch(letra)
        {
            case 'y':
            case 'Y':
                System.out.println("Yes!");
                break;
            case 'n':
            case 'N':
                System.out.println("No!");
        }
    }
}
