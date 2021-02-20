//import java.util.Scanner;

public class ExeVet03 {
    public static void main (String args[]){
        int vet[] = new int[100];       
        for(int i=vet.length;i>0;i--)            
            vet[i-1] = i;
        for (int i=0;i<vet.length;i++)
            System.out.println("vet["+i+"] "+vet[i]);
    }    
}
