import java.util.Scanner;

public class ExeVet11 {
    public static void main (String args[]){
        double num[] = new double[10];
        Scanner s = new Scanner(System.in);
        for (int i = 0; i < num.length; i++){
            System.out.println("Digite um número:");
            num[i] = s.nextDouble() / 2;
        }
        for (int j = 0; j < num.length; j++){
            System.out.println("Metade:" + num[j]);
        }
    }
}
