import java.util.Scanner;

class Array10 {

    static void tudoSeis(double[] v) {
        int i;

        for(i = 0; i < v.length; i++)
            v[i] = 6.0;
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

        vet = new double[3];
        tudoSeis(vet);
        mostrar(vet);
    }

}
