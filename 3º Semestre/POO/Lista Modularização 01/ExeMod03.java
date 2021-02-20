import java.util.Scanner;

public class ExeMod03 {
    static double hipotenusa(double cateto1, double cateto2){
        double hip = (cateto1*cateto1)+(cateto2*cateto2); // soma dos quadrados dos catetos
        return Math.sqrt(hip); // Quadrado da hipotenusa        
    }
    
    public static void main (String args[]){
        Scanner s = new Scanner(System.in);
        System.out.print("Cateto 1:");
        double cat1 = s.nextFloat();
        System.out.print("Cateto 2:");
        double cat2 = s.nextFloat();       
        System.out.println(hipotenusa(cat1,cat2));        
    }
}
