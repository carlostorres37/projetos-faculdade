import javax.swing.JOptionPane; // Cobrado na prova

public class ExemplosDeJanelas {
   public static void main( String args[] ) {
      String resposta;
      int vali;
      float valf;
      double vald;

      resposta = JOptionPane.showInputDialog("Digite um inteiro:"); // Cobrado na prova
      // resposta = JOptionPane.showInputDialog(null, "Digite um inteiro:"); // Cobrado na prova
      // vali = Integer.parseInt(resposta);
      try{
         vali = Integer.parseInt(resposta);
      }catch(Exception e){
         JOptionPane.showMessageDialog(null, "Tipo de dados digitado inválido!");
      }
      JOptionPane.showMessageDialog(null, "Você digitou " + vali); // Cobrado na Prova
      resposta = JOptionPane.showInputDialog("Digite um real:");
      valf = Float.parseFloat(resposta);
      JOptionPane.showMessageDialog(null, "Você digitou " + valf);
      resposta = JOptionPane.showInputDialog("Digite um real:");
      vald = Double.parseDouble(resposta);
      JOptionPane.showMessageDialog(null, "Você digitou " + vald);
      JOptionPane.showMessageDialog(null, vali + " é um inteiro", "Mensagem de erro", JOptionPane.ERROR_MESSAGE);
      JOptionPane.showMessageDialog(null, valf + " é um real", "Mensagem de informação", JOptionPane.INFORMATION_MESSAGE);
      JOptionPane.showMessageDialog(null, vald + " é um real", "Mensagem de aviso", JOptionPane.WARNING_MESSAGE);
      JOptionPane.showMessageDialog(null, "Este é o fim?", "Mensagem de questão", JOptionPane.QUESTION_MESSAGE);
   }
}
