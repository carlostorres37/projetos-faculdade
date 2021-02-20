import java.io.*;

class Cliente implements Serializable {
    private String nome;
    private int telefone;

    Cliente(String n, int t) {
        nome = n;
        telefone = t;
    }

    String getNome() {
        return nome;
    }

    int getTelefone() {
        return telefone;
    }

    void setNome(String nome) {
        this.nome = nome;
    }

    void setTelefone(int t ) {
        telefone = t;
    }
}
