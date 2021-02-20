import java.io.*;
import javax.swing.JOptionPane;

class EscreverObjetoNoArquivo {
    public static void main(String args[]) {
        Aluno al;
        FileOutputStream fo;
        ObjectOutputStream oo;

        al = new Aluno(6348);
        try {
            fo = new FileOutputStream("c:\\aulas\\aluno.obj");
            oo = new ObjectOutputStream(fo);
            oo.writeObject(al);
            oo.close();
            JOptionPane.showMessageDialog(null, "O objeto foi escrito no arquivo");
        } catch(IOException e) {
            JOptionPane.showMessageDialog(null, "Erro - " + e.toString(), "Mensagem de erro", JOptionPane.ERROR_MESSAGE);
        }
    }
}
