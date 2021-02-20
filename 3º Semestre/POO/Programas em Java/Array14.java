import java.util.Scanner;

class Array14 {

    static int somarPares(int[] v) {
        int i, soma;

        soma = 0;
        for(i = 0; i < v.length; i++)
            if(v[i] % 2 == 0)
                soma += v[i];
        return soma;
    }

    static void ler(int[] v) {
        Scanner s;
        int i;

        s = new Scanner(System.in);
        for(i = 0; i < v.length; i++)
        {
            System.out.print("Digite um inteiro: ");
            v[i] = s.nextInt();
        }
    }

    static void mostrar(int[] v) {
        int i;

        System.out.print("{ ");
        for(i = 0; i < v.length; i++)
            System.out.print(v[i] + " ");
        System.out.println("}");
    }

    public static void main(String[] args) {
        int[] vet;
        int resultado;

        vet = new int[3];
        ler(vet);
        mostrar(vet);
        resultado = somarPares(vet);
        System.out.println("O somatório é " + resultado);
/*
        System.out.println("O somatório é " + somarPares(vet));
*/
    }

}
