import java.util.Scanner;

class Array9 {

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
        double[] vet, vetor;

        vet = new double[3];
        vetor = new double[5];
        ler(vet);
        mostrar(vet);
        ler(vetor);
        mostrar(vetor);
    }

}
