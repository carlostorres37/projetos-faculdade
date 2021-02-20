//import java.util.Scanner;

public class ExeVet02 {
    public static void main (String args[]){
        int vet[] = new int[100];       
        for(int i=0;i<vet.length;i++)
            vet[i] = i+1;
        for (int i=0;i<vet.length;i++)
            System.out.println("vet["+i+"] "+vet[i]);
    }    
}
