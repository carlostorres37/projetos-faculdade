import java.util.Scanner;

class Array15 {

    static double menor(double[] v) {
        int i;
        double min;

        min = 11.0;    // este é meu chute inicial para o menor valor
        for(i = 0; i < v.length; i++)
            if(v[i] < min)
                min = v[i];
        return min;
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
        resultado = menor(vet);
        System.out.println("O menor é " + resultado);
/*
        System.out.println("O menor é " + menor(vet));
*/
    }

}
