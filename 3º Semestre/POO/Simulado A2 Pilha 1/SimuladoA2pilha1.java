// 1
class PilhaException extends Exception{}
class PilhaCheiaException extends PilhaException{}
class Folha implements Serializable{
	private int numero;
	// 2
	Folha(){
		numero = 2;
	}
	// 3
	int getNumero(){
		return numero;
	}
	void setNumero(int num){
		numero = num;
	}	
}
// 4
class Carta extends folha implements Serializable{
	private String naipe;
	// 5
	Carta(int num, String nai){
		setNumero(num);		
		naipe = nai;
	}
	// 6
	String getNaipe(){
		return naipe;
	}
	void setNaipe(String nai){
		naipe = nai;
	}	
}
// 7
class Pilha implements Serializable{
	private static int base;
	private static int lmimte;
	private int topo;
	private Carta vetor[];
	base = 0;
	limit = 111;
	
	// 8
	Pilha()
	
}
	


