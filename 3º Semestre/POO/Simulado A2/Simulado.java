public class Simulado {
    // 14
    public static void main(String args[]){
        DvdPlayer dp1 = new DvdPlayer();
        DvdPlayer dp2 = new DvdPlayer(99.8f,8);
        BlurayPlayer bp1 = new BlurayPlayer();
        BlurayPlayer bp2 = new BlurayPlayer(599.79f,1,12);
        
        // 15
        System.out.println("Resultado :" + dp2.investimento());
        dp1.setDvds(4);
        dp2.setValor(149.9f);
        
        // 16
        System.out.println("Resultado: "+ bp2.investimento());
        bp1.setBds(6);
        bp1.setValor(549.9f);
    }
    
}
