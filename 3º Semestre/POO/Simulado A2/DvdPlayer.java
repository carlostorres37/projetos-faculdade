
public class DvdPlayer {
    // 1º Questão
    private float valor;
    private int dvds;
    static int bomba = 40;
    
    // 2º Questão
    DvdPlayer(){
        this.valor = 199.99f; // f no final - Converte para float              
        this.dvds = bomba/4;         
    }
    // 3º Questão
    DvdPlayer(float v, int d){
        this.valor = v;
        this.dvds = d;
        this.bomba = this.bomba + 1;        
    }
    // 4º Questão    
    float getValor(){
        return valor;
    } 
    int getDvds(){
        return dvds;
    }
    // 5º Questão
    static int getBomba(){
        return bomba;
    }
    // 6º Questão
    void setValor(float v){
        this.valor = v;
    }    
    void setDvds(int d){
        this.dvds = d;
    }
    // 7
    float investimento(){
        return this.valor + 30 * this.dvds;
    }           
}
