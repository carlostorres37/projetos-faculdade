import java.util.Scanner;

class Array19 {

    static boolean buscar(double[] v, double val) {
        int i;

        for(i = 0; i < v.length; i++)
            if(v[i] == val)
                return true;
        return false;
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
        boolean resultado;

        vet = new double[5];
        ler(vet);
        mostrar(vet);
        resultado = buscar(vet, 3.5);
        if(resultado) /* if(buscar(vet, 3.5)) */
            System.out.println("Encontrei o valor!");
        else
            System.out.println("Não encontrei o valor!");
    }

}
