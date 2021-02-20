//import java.util.Scanner;

public class ExeVet04 {
    public static void main(String args[]){
        int vet[] = new int[101];
        for (int i = 0; i < vet.length; i++) 
            vet[i] = i+100;
        for (int i = 0; i < vet.length; i++)           
            System.out.println("vet["+i+"] = "+ vet[i]);   
    }    
}
