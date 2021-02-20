import java.util.Scanner;

class Array7 {
    public static void main(String[] args) {
        Scanner s;
        double[] vet, vetor;
        int i;
        final int MAX = 6;

        s = new Scanner(System.in);
        vet = new double[MAX];
        vetor = new double[MAX];
        for(i = 0; i < MAX; i++)
        {
            System.out.print("Digite um real: ");
            vet[i] = s.nextDouble();
        }
        System.out.print("vet = { ");
        for(i = 0; i < MAX; i++)
            System.out.print(vet[i] + " ");
        System.out.println("}");
        for(i = 0; i < MAX; i++)
        {
            System.out.print("Digite um real: ");
            vetor[i] = s.nextDouble();
        }
        System.out.print("vetor = { ");
        for(i = 0; i < MAX; i++)
            System.out.print(vetor[i] + " ");
        System.out.println("}");
    }
}
