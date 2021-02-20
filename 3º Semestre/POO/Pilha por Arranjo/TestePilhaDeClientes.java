import java.io.*;
import javax.swing.JOptionPane;

class TestePilhaDeClientes {
    public static void main(String[] args) {
        String resposta, nome;
        int telefone;
        Pilha cadastro;
        Cliente cli;
        FileOutputStream fo;
        ObjectOutputStream oo;

        cadastro = new Pilha();
        for(;;)
        {
            nome = JOptionPane.showInputDialog("Digite nome do cliente");
            if(nome.equals("fim"))
                break;
            resposta = JOptionPane.showInputDialog("Digite telefone do cliente");
            telefone = Integer.parseInt(resposta);
            cli = new Cliente(nome, telefone);
            cadastro.inserir(cli);
        }
        try {
            fo = new FileOutputStream("c:\\aulas\\cadastro.obj");
            oo = new ObjectOutputStream(fo);
            oo.writeObject(cadastro);
            oo.close();
        } catch(IOException e) {
            JOptionPane.showMessageDialog(null, "Erro - " + e.toString());
        }
        while(!cadastro.vazia())
        {
            cli = cadastro.remover();
            JOptionPane.showMessageDialog(null,
                "Nome: " + cli.getNome() +
                "\nTelefone: " + cli.getTelefone());
        }
    }
}
