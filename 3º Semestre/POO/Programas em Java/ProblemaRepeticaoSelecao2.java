/* Faça um programa em Java que repita a leitura de números inteiros 
(digitados pelo teclado) enquanto não for digitado zero. Dentro desta 
repetição calcule o somatório dos números digitados que foram maiores 
que 4 ou ímpares. No final do programa mostre na tela o valor final 
do somatório calculado. */

import java.util.Scanner;

class ProblemaRepeticaoSelecao2 {
    public static void main(String[] args) {
        Scanner s;
        int num, soma;

        s = new Scanner(System.in);
        soma = 0;
        System.out.print("Digite um inteiro: ");
        num = s.nextInt();
        while(num != 0)
        {
            if(num > 4 || num % 2 != 0)
                soma += num;
            System.out.print("Digite um inteiro: ");
            num = s.nextInt();
        }
        System.out.println("O somatório é " + soma);
    }
}
