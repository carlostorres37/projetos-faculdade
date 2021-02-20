import java.util.Scanner;

public class ExeMod04 {
    static double conversor1(double real){
        return real/1.62;        
    }
    
    public static void main(String args[]){
        Scanner s = new Scanner(System.in);
        System.out.print("Real:");
        double real = s.nextDouble();
        System.out.println(conversor1(real));
    }
}
