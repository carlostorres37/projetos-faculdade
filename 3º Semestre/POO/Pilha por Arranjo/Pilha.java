import java.io.*;

class Pilha implements Serializable {
    private static int base = 0, limite = 100;
    private int topo;
    private Cliente[] vetor;

    Pilha() {
        topo = base - 1;
        vetor = new Cliente[limite + 1];
    }

    void inserir(Cliente cli) {
        topo = topo + 1;
        vetor[topo] = cli;
    }

    Cliente remover() {
        Cliente cli;
        
        cli = vetor[topo];
        vetor[topo] = null;
        topo = topo - 1;
        return cli;
    }

    boolean vazia() {
        if(topo < base)
            return true;
        else
            return false;
    }
}
