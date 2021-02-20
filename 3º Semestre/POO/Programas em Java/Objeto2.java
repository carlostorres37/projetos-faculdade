class Pessoa {
    int idade;
    double altura, peso;
    char sexo;
    boolean solteiro;
}

class Objeto2 {
    public static void main(String[] args) {
        Pessoa bob;

        bob = new Pessoa();
        bob.idade = 21;
        bob.altura = 1.71;
        bob.peso = 68.5;
        bob.sexo = 'M';
        bob.solteiro = true;
        System.out.println("Idade = " + bob.idade + " anos.");
        System.out.println("Altura = " + bob.altura + " metros.");
        System.out.println("Peso = " + bob.peso + " quilos.");
        if(bob.sexo == 'M')
            System.out.println("Sexo = masculino.");
        else
            if(bob.sexo == 'F')
                System.out.println("Sexo = feminino.");
            else
                System.out.println("Sexo = indefinido.");
        if(bob.solteiro)
            System.out.println("Solteiro = sim." );
        else
            System.out.println("Solteiro = não." );
    }
}
