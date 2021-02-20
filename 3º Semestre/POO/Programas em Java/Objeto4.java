class Pessoa {
    int idade;
    double altura, peso;
    char sexo;
    boolean solteiro;

    void mostrar() {
        System.out.println("Idade = " + idade + " anos.");
        System.out.println("Altura = " + altura + " metros.");
        System.out.println("Peso = " + peso + " quilos.");
        if(sexo == 'M')
            System.out.println("Sexo = masculino.");
        else
            if(sexo == 'F')
                System.out.println("Sexo = feminino.");
            else
                System.out.println("Sexo = indefinido.");
        if(solteiro)
            System.out.println("Solteiro = sim." );
        else
            System.out.println("Solteiro = não." );
    }
}

class Objeto4 {
    public static void main(String[] args) {
        Pessoa bob, mary;

        bob = new Pessoa();
        bob.idade = 21;
        bob.altura = 1.71;
        bob.peso = 68.5;
        bob.sexo = 'M';
        bob.solteiro = true;
        bob.mostrar();
        mary = new Pessoa();
        mary.idade = 32;
        mary.altura = 1.65;
        mary.peso = 59.1;
        mary.sexo = 'F';
        mary.solteiro = false;
        mary.mostrar();
    }
}
