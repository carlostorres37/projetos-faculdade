import java.util.Scanner;

class Array12 {

    static double somar(double[] v) {
        int i;
        double soma;

        soma = 0.0;
        for(i = 0; i < v.length; i++)
            soma += v[i];
        return soma;
    }

    static void ler(double[] v) {
        Scanner s;
        int i;

        s = new Scanner(System.in);
        for(i = 0; i < v.length; i++)
        {
            System.out.print("Digite um real: ");
            v[i] = s.nextDouble();
        }
    }

    static void mostrar(double[] v) {
        int i;

        System.out.print("{ ");
        for(i = 0; i < v.length; i++)
            System.out.print(v[i] + " ");
        System.out.println("}");
    }

    public static void main(String[] args) {
        double[] vet;
        double resultado;

        vet = new double[3];
        ler(vet);
        mostrar(vet);
        resultado = somar(vet);
        System.out.println("O somatório é " + resultado);
/*
        System.out.println("O somatório é " + somar(vet));
*/
    }

}
