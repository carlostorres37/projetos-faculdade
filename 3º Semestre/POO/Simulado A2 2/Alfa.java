// Questão 1
class Alfa {
    private float valorUm;
    private static int contador = 0;   
    // Questão 2
    Alfa(){
        this.valorUm = 2.6f;
        contador++;
    }
    // Questão 3
    Alfa(float vu){
        this.valorUm = vu;    
        contador++;
    }
    //Questão 4
    float getValorUm(){
        return this.valorUm;
    }
    // Questão 5
    static int getContador(){
        return contador;
    }
    // Questão 6 
    void setValorUm(float vu){
        this.valorUm = vu;
    }
    // Questão 7
    float calcular(){
        return (this.valorUm*this.valorUm);
    }    
}
