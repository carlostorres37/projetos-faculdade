import javax.swing.JOptionPane;

class TestaLeitura {
   public static void main(String args[]) {
      int valor;
      boolean erro;
      String resposta;
      
      valor = 0;      
      do {
         erro = false;
         resposta = JOptionPane.showInputDialog("Digite um inteiro");
         try {
            valor = Integer.parseInt(resposta);
         } catch(Exception e) {
            JOptionPane.showMessageDialog(null,"Valor Incorreto!");
            erro = true;
         }
      } while(erro);
      JOptionPane.showMessageDialog(null,"Você digitou " + valor);
   }
}
