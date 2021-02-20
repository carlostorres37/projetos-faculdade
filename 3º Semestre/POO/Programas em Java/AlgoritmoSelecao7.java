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

class AlgoritmoSelecao7 {
    public static void main(String[] argumentos) {
        Scanner s;
        char letra;
        String palavra;

        s = new Scanner(System.in);
        System.out.print("Digite y ou Y ou n ou N: ");
        palavra = s.next();
        letra = palavra.charAt(0);
        if(letra == 'y' || letra == 'Y')
            System.out.println("Yes!");
        else
            if(letra == 'n' || letra == 'N')
                System.out.println("No!");
    }
}
