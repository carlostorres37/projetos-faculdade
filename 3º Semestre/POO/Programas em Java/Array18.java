import java.util.Scanner;

class Array18 {

    static int contar(double[] v, double min, double max) {
        int i, cont;

        cont = 0;
        for(i = 0; i < v.length; i++)
            if(v[i] >= min && v[i] <= max)
                cont++;
        return cont;
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
        int resultado;

        vet = new double[5];
        ler(vet);
        mostrar(vet);
        resultado = contar(vet, 6.0, 10.0);
        System.out.println("O resultado é " + resultado);
/*
        System.out.println("O resultado é " + contar(vet, 6.0, 10.0));
*/
    }

}
