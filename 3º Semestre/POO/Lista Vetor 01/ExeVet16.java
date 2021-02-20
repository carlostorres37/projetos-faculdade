import java.util.Scanner;
public class ExeVet16 {
    public static void main (String args[]){
        double altura[] = new double[10];
        double media = 0;
        Scanner s = new Scanner(System.in);
        for(int i = 0; i < altura.length; i++){
            System.out.print("Digite uma altura:");
            altura[i] = s.nextDouble();
            media = media + altura[i];
        }
        media = media / altura.length;
        for (int j = 0; j < altura.length; j++){
            if (altura[j] > media){
                System.out.println("Altura Maior que media:"+ altura[j]);
            }
        }
    }
    
}
