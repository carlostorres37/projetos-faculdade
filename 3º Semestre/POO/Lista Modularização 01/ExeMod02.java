import java.util.Scanner;
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author bslab102c
 */
public class ExeMod02 {
    static void massa(float peso, float altura){
        float imc = peso/(altura*altura);
        System.out.println(imc);    
        if (imc < 20)
            System.out.println("Abaixo do peso");
        else if (imc >= 20 && imc <= 25)
            System.out.println("Peso Normal");
        else
            System.out.println("Acima do peso");
    }
    
    public static void main (String main[]){
        Scanner s = new Scanner(System.in);
        System.out.print("Entre com seu Peso:");
        float peso = s.nextFloat();
        System.out.print("Entre com sua Altura:");
        float altura = s.nextFloat();
        massa(peso, altura);        
    }
}
