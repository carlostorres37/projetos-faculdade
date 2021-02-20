//import java.util.Scanner;

public class ExeVet05 {
    public static void main(String args[]){    
       int vet[] = new int[101];
        for (int i = 0; i < vet.length; i++) 
            vet[i] = (vet.length + 99) - i;
        for (int i = 0; i < vet.length; i++) 
            System.out.println("vet["+i+"] = "+ vet[i]);
        
    }   
}
