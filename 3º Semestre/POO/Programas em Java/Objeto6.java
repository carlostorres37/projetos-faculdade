class Pessoa {
    int idade;
    double altura, peso;
    char sexo;
    boolean solteiro;

    Pessoa() {
        idade = 0;
        altura = 0.25;
        peso = 1.0;
        sexo = 'M';
        solteiro = true;
    }

    Pessoa(int id, double al, double pe, char se, boolena so) {
        idade = id;
        altura = al;
        peso = pe;
        sexo = se;
        solteiro = so;
    }

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

    boolean adulto() {
        if(idade >= 21)
	    return true;
        else
            return false;
    }

    double dividePesoAltura() {
        return peso / altura;

    void dobraIdade() {
        idade *= 2;
    }

    void novaIdade(int id) {
        idade = id;
    }

    void engordar(double quilos) {
        peso += quilos;
    }
}

class Objeto6 {
    public static void main(String[] args) {
        Pessoa joe, bob, mary;

        joe = new Pessoa();
        joe.mostrar();
        if(joe.adulto())
            System.out.println("É um adulto." );
        else
            System.out.println("Não é um adulto." );
        bob = new Pessoa(21, 1.71, 68.5, 'M', true);
        bob.mostrar();
        System.out.println("Peso dividido pela altura = " + bob.dividePesoAltura());
        mary = new Pessoa(32, 1.65, 59.1, 'F', false);
        mary.novaIdade(18);
        mary.dobraIdade();
        mary.engordar(1.0);
        mary.mostrar();
    }
}
