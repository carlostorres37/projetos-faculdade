/* Faça um programa em Java que repita a leitura de 10 números inteiros 
(digitados pelo teclado). Dentro desta repetição calcule o somatório 
dos números digitados que foram ao mesmo tempo múltiplos de 3 e 
menores que 12. No final do programa mostre na tela o valor final do 
somatório calculado. */

import java.util.Scanner;

class ProblemaRepeticaoSelecao1 {
    public static void main(String[] args) {
        Scanner s;
        int num, soma, i;

        s = new Scanner(System.in);
        soma = 0;
        i = 1;
        while(i <= 10)
        {
            System.out.print("Digite um inteiro: ");
            num = s.nextInt();
            if(num % 3 == 0 && num < 12)
                soma += num;
            i++;
        }
        System.out.println("O somatório é " + soma);
    }
}
