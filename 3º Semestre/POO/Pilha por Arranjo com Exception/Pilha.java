import java.io.*;

class PilhaException extends Exception {
}

class PilhaCheiaException extends PilhaException {
}

class PilhaVaziaException extends PilhaException {
}

class Pilha implements Serializable {
    private static int base = 0, limite = 2;
    private int topo;
    private Cliente[] vetor;

    Pilha() {
        topo = base - 1;
        vetor = new Cliente[limite + 1];

    }

    void inserir(Cliente cli) throws PilhaCheiaException {
        if(topo < limite)
        {
            topo = topo + 1;
            vetor[topo] = cli;
        }
        else
            throw new PilhaCheiaException();
    }

    Cliente remover() throws PilhaVaziaException{
        Cliente cli;
        
        if(topo >= base)
        {
            cli = vetor[topo];
            vetor[topo] = null;
            topo = topo - 1;
            return cli; 
        }
        else
            throw new PilhaVaziaException();
    }

    boolean vazia() {
        if(topo < base)
            return true;
        else
            return false;
    }
}
