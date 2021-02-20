// 8
public class BlurayPlayer extends DvdPlayer {
    private int bds;
    // 9
    BlurayPlayer(){
        setValor(399.99f);
        setDvds(getBomba()/5);
        this.bds = 3;
    }
    // 10
    BlurayPlayer(float v, int d, int b){
        setValor(v);
        setDvds(d);
        this.bds = b;
    }    
    // 11
    int getBds(){
        return this.bds;
    }
    // 12
    void setBds(int b){
        this.bds = b;
    }
    // 13
    float investimento(){
        return getValor() + 30*getDvds() + 60*this.bds;
    }    
}
