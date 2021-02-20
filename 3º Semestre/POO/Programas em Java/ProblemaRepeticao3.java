/* Faça um programa em Java com um método que retorne um valor para:

numPi(n) = 4 – 4/3 + 4/5 – 4/7 + …

onde n é o número de termos do somatório acima.

O nome desse método deve ser numPi, o tipo de retorno dele deve ser 
real, e ele deve ter como parâmetro o número de termos n (inteiro) 
para o somatório acima. No método main, leia do teclado um número 
inteiro, execute o método numPi usando esse inteiro como argumento 
e mostre na tela o resultado do método numPi. */

import java.util.Scanner;

class ProblemaRepeticao3 {
    static double numPi(int n) {
        double soma, num;
        int i, den;

        soma = 0.0;
        num = 4.0;
        den = 1;
        for(i = 1; i <= n; i++)
        {
            soma += num / den;
            num = -num;
            den += 2;
        }
        return soma;
    }
    public static void main(String[] argumentos) {
        Scanner s;
        int num;
        double resultado;

        s = new Scanner(System.in);
        System.out.print("Digite um número inteiro: ");
        num = s.nextInt();
        resultado = numPi(num);
        System.out.println("O resultado é " + resultado);
//        System.out.println("O resultado é " + numPi(num));
    }
}
