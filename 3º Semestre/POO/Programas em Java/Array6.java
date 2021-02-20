import java.util.Scanner;

class Array6 {
    public static void main(String[] args) {
        Scanner s;
        double[] vet;
        int i;
        final int MAX = 6;

        s = new Scanner(System.in);
        vet = new double[MAX];
        for(i = 0; i < MAX; i++)
        {
            System.out.print("Digite um real: ");
            vet[i] = s.nextDouble();
        }
        System.out.print("vet = { ");
        for(i = 0; i < MAX; i++)
            System.out.print(vet[i] + " ");
        System.out.println("}");
    }
}
