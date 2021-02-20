import java.util.Scanner;

public class HelloWord {   
   public static void main(String args[]){
       Scanner s = new Scanner(System.in);
       System.out.print("Digite seu nome: ");
       String nome = s.nextLine();
       System.out.println("Oi "+nome+" !!");
   }
}
