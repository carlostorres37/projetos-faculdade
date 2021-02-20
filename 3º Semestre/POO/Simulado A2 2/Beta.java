import java.io.*;

// Questão 8
public class Beta extends Alfa implements Serializable{
    private float valorDois;
    //Questão 9
    Beta(){
        setValorUm(3.7f);
        this.valorDois = 13;
    }
    // Questão 10
    Beta(float vu, float vd){
        setValorUm(vu);
        this.valorDois = vd;
    }
    // Questão 11
    float getValorDois(){
        return this.valorDois;
    }
    // Questão 12
    void setValorDois(float vd){
        this.valorDois = vd;
    }
    // Questão 13
    float calcular(){
        return getValorUm() * getValorUm() + this.valorDois;
    }    
}
