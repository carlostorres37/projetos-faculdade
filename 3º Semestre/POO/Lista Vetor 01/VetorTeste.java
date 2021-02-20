import java.util.Scanner;

class VetorTeste {
    public static void main (String args[]){
        int i;
        Scanner s = s = new Scanner(System.in);        
        double vet[] = new double[3];
        for(i=0;i<vet.length; i++){
            System.out.print("Digite um valor:");
            vet[i] = s.nextDouble();
        }
        
        for (i=0;i<vet.length;i++)
            System.out.println(vet[i]);
    }
    
}
