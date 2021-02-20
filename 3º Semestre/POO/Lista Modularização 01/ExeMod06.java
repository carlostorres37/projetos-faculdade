import java.util.Scanner;

public class ExeMod06 {
    static int fatorial(int n){
        if (n <= 0)
            return 1;
        else
            return n * fatorial(n-1);        
    }
    
    public static void main(String args[]){
        Scanner s = new Scanner(System.in);
        System.out.print("Entre com o numero para fatorial:");
        System.out.println(fatorial(s.nextInt()));
    }
}
