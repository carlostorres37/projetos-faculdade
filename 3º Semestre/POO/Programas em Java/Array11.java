import java.util.Scanner;

class Array11 {

    static void tudo(double[] v, double val) {
        int i;

        for(i = 0; i < v.length; i++)
            v[i] = val;
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
        Scanner s;
        double[] vet;
        double valor;

        s = new Scanner(System.in);
        vet = new double[3];
        tudo(vet, 7.1);
        mostrar(vet);
        System.out.print("Digite um real: ");
        valor = s.nextDouble();
        tudo(vet, valor);
        mostrar(vet);
    }

}
