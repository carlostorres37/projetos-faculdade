import java.util.Scanner;

class Array20 {

    static void somarVetores(double[] a, double[] b, double[] c) {
        int i;

        for(i = 0; i < c.length; i++)
            c[i] = a[i] + b[i];
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
        double[] x, y, w;

        x = new double[3];
        y = new double[3];
        w = new double[3];
        ler(x);
        mostrar(x);
        ler(y);
        mostrar(y);
        System.out.println("A soma dos vetores é:");
        somarVetores(x, y, w);
        mostrar(w);
    }

}
