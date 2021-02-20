import java.util.Scanner;

public class ExeMod01 {
    
     static void semana (int dia){
        if (dia == 2 || dia == 4 || dia == 6)
            System.out.println("Trabalho");            
        else if (dia == 1 || dia == 7)
            System.out.println("Final de Semana");
        else        
            System.out.println("Sem Trabalho");
    }
    
    public static void main(String args[]){
        Scanner s = new Scanner(System.in);
        System.out.println("  1 - Domingo");
        System.out.println("  2 - Segunda");
        System.out.println("  3 - Terça");
        System.out.println("  4 - Quarta");
        System.out.println("  5 - Quinta");
        System.out.println("  6 - Sexta");
        System.out.println("  7 - Sabado");
        System.out.print("Entre com um número:");
        semana(s.nextInt());               
    }    
}
