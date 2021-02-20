import java.util.Scanner;

public class Exe01Cond {
    public static void main(String args[]){
        Scanner s = new Scanner (System.in);
        System.out.print("Entre com um número: ");
        int num = s.nextInt();
        if (num > 20) 
            System.out.println("Seu número é: "+num);
        else
            System.out.println("Seu número não é maior que 20");
    }    
}
