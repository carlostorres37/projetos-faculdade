import java.util.Scanner;

class Array17 {

    static int contar(double[] v, double val) {
        int i, cont;

        cont = 0;
        for(i = 0; i < v.length; i++)
            if(v[i] == val)
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
        resultado = contar(vet, 3.5);
        System.out.println("O resultado é " + resultado);
/*
        System.out.println("O resultado é " + contar(vet, 3.5));
*/
    }

}
