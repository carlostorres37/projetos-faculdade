/*
 * Lista Exercicios Objeto 
 */

public class Pessoa {
    // 1º Questão
    int     idade;
    double  altura;
    double  peso;
    char    sexo;
    boolean solteiro;
  
    // 2º Questão
    Pessoa(){
        this.idade    = 0;
        this.altura   = 0.25;
        this.peso     = 1.0;
        this.sexo     = 'M';
        this.solteiro = true;
    }
    
    // 3º Questão
    Pessoa(int id, double al, double pe,char se,boolean so){
        this.idade    = id;
        this.altura   = al;
        this.peso     = pe;
        this.sexo     = se;
        this.solteiro = so;
    }
    
    // 4º Questão
    void mostrar(){
        System.out.println("Idade: "+this.idade);
        System.out.println("Altura: "+this.altura);
        System.out.println("Peso: "+this.peso);
        System.out.println("Sexo: "+this.sexo);
        System.out.println("Solteiro: "+this.solteiro);
    }
    
    // 5º Questão
    boolean adulto(){
        return this.idade >= 21 ? true : false;        
    }
    
    // 6º Questão
    double dividePesoAltura(){
        return this.peso/this.altura;
    }
    
    // 7º Questão
    void dobraIdade(){
        this.idade *= 2;
    }

    // 8º Questão
    void novaIdade(int id){
        this.idade = id;
    }
    
    // 9º Questão
    void engordar(double quilos){
        this.peso += quilos;
    }        
    
}