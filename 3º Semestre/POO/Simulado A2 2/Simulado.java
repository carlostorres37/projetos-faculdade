import java.io.*;
import javax.swing.JOptionPane;

// Questão 14
public class Simulado {
    public static void main (String args[]){
        Alfa a1;
        Alfa a2;
        Beta b1;
        Beta b2;
        String resposta;
        float novoValorUm;
        FileOutputStream fo;
        ObjectOutputStream oo;
        FileInputStream fi;
        ObjectInputStream oi;
        
        a1 = new Alfa();
        a2 = new Alfa(3.14f);
        b1 = new Beta();
        b2 = new Beta(4.7f,23f);        
        // Questão 15
        JOptionPane.showMessageDialog(null, a2.calcular());
        resposta = JOptionPane.showInputDialog("Novo Valor de um:");
        novoValorUm = Float.parseFloat(resposta);
        a1.setValorUm(novoValorUm);
        JOptionPane.showMessageDialog(null, Alfa.getContador());
        //Questão 16 (Aprender isso aqui)
        try{
            fo = new FileOutputStream("beta.obj");
            oo = new ObjectOutputStream(fo);
            oo.writeObject(b2);
            oo.close();
            JOptionPane.showMessageDialog(null, "Objeto scrito no arquivo");
        }catch(IOException e){
            JOptionPane.showMessageDialog(null, "Erro:"+e.toString());
        }
    }
    
    
    
}
