import java.util.Scanner;

class Array8 {
    public static void main(String[] args) {
        Scanner s;
        double[] vet, vetor;
        int i;

        s = new Scanner(System.in);
        vet = new double[3];
        vetor = new double[5];
        for(i = 0; i < vet.length; i++)
        {
            System.out.print("Digite um real: ");
            vet[i] = s.nextDouble();
        }
        System.out.print("vet = { ");
        for(i = 0; i < vet.length; i++)
            System.out.print(vet[i] + " ");
        System.out.println("}");
        for(i = 0; i < vetor.length; i++)
        {
            System.out.print("Digite um real: ");
            vetor[i] = s.nextDouble();
        }
        System.out.print("vetor = { ");
        for(i = 0; i < vetor.length; i++)
            System.out.print(vetor[i] + " ");
        System.out.println("}");
    }
}
