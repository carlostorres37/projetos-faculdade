/* Faça um programa em Java que repita a leitura de 10 números reais 
(digitados pelo teclado). Dentro desta repetição calcule o somatório 
dos números digitados. No final do programa mostre na tela o valor 
final do somatório calculado. */

import java.util.Scanner;

class ProblemaRepeticao1 {
    public static void main(String[] args) {
        Scanner s;
        double num, soma;
        int i;

        s = new Scanner(System.in);
        soma = 0.0;
        i = 1;
        while(i <= 10)
        {
            System.out.print("Digite um real: ");
            num = s.nextDouble();
            soma += num;
            i++;
        }
        System.out.println("O somatório é " + soma);
    }
}
