/* Faça um programa em Java que repita a leitura de números reais 
(digitados pelo teclado) enquanto não for digitado um número positivo. 
Dentro desta repetição calcule o somatório dos números digitados. No final 
do programa mostre na tela o valor final do somatório calculado. */

import java.util.Scanner;

class ProblemaRepeticao2 {
    public static void main(String[] args) {
        Scanner s;
        float num, soma;

        s = new Scanner(System.in);
        soma = 0.0f;
        System.out.print("Digite um real: ");
        num = s.nextFloat();
        while(num <= 0.0f)
        {
            soma += num;
            System.out.print("Digite um real: ");
            num = s.nextFloat();
        }
        System.out.println("O somatório é " + soma);
    }
}
