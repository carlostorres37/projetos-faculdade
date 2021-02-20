/* Um construtor é um método que só é chamado quando um objeto é criado.
   Um objeto é criado através do operador new.
   Um construtor serve para inicializar os campos de dados de um objeto.
   O nome de um construtor é igual ao da classe.
   Um construtor não possui tipo de retorno.
*/

class Pessoa {
    int idade;
    double altura, peso;
    char sexo;
    boolean solteiro;

// Construtor sem parâmetros

    Pessoa() {
        this.idade = 0;			//    idade = 0;
        this.altura = 0.25;		//    altura = 0.25;
        this.peso = 1.0;		//    peso = 1.0;
        this.sexo = 'M';		//    sexo = 'M';
        this.solteiro = true;		//    solteiro = true;
    }

// Construtor com parâmetros

    Pessoa(int id, double al, double pe, char se, boolena so) {
        this.idade = id;		//    idade = id;
        this.altura = al;		//    altura = al;
        this.peso = pe;			//    peso = pe;
        this.sexo = se;			//    sexo = se;
        this.solteiro = so;		//    solteiro = so;
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
}

class Objeto5 {
    public static void main(String[] args) {
        Pessoa joe, bob, mary;

        joe = new Pessoa();
        joe.mostrar();
        bob = new Pessoa(21, 1.71, 68.5, 'M', true);
        bob.mostrar();
        mary = new Pessoa(32, 1.65, 59.1, 'F', false);
        mary.mostrar();
    }
}
