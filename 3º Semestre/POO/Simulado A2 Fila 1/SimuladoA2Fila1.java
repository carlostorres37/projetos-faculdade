// Questão 1
class FilaException extends Exception {}
class FilaCheiaException extends FilaException{}
class FilaVaziaException extends FilaException{}

class Vegetal implements Serializable{
	private boolean fresco; 
	
	// Questão 2
	Vegetal(){
		this.fresco = true;
	}
	
	// Questão 3
	boolean getFresco(){
		return this.fresco;
	}
	
	void setFresco(boolean fre){
		this.fresco = fre;
	}
}

// Questão 4
class Fruta extends Vegetal implements Serializable {
	
	private int sementes;
	
	// Questão 5
	Fruta(boolean fre, int sem){
		setFresco(fre);
		this.sementes = sem;
	}
	
	// Questão 6
	int getSementes(){
		return this.sementes;
	}
	
	void setSementes(int sem){
		this.sementes = sem;
	}
}

// Questão 7
class Fila implements Serializable {
	private static int li = 0;
	private static int ls = 222;
	private int inicio, fim;
	private Fruta[] vetor;
	
	// Questão 8
	Fila(){
		this.inicio = li - 1;
		this.fim = li - 1;
		this.vetor = new Fruta[ls - li + 1];
	}
	
	// Questão 9 *** CORRIGIR !!!!
	void inserir(Fruta fru) throws FilaCheiaException {
		if(this.fim != this.inicio-1 && (this.inicio != li || this.fim != ls)){
			
			this.vetor[this.fim] = fru;
			this.fim++;
			if(this.inicio < 0)
				this.inicio++;
		}
		else
			throw new FilaCheiaException();
	}
	
	// Questão 10 *** CORRIGIR !!!!
	Fruta remover() throws FilaVaziaException {
		if(this.inicio != li-1){
			Fruta fru = this.vetor[this.inicio];
			this.vetor[this.inicio] = null;
			// se for o ultimo da fila, zera a fila.
			if(this.inicio == this.fim)
				this.inicio = this.fim = li-1;
			else
				this.inicio++;
				
			return fru;
		}
		else
			throw new FilaVaziaException();
	}
	
}

// Questão 11
public class EstruturaDeDados {
	
	public static void main(String[] args){
		Fila sacola;
		Fruta fru;
		String resposta;
		boolean fresco;
		int sementes;
		FileInputStream fi;
		ObjectInputStream oi;
		FileOutputStream fo;
		ObjectOutputSream oo;
		
		sacola = new Fila();
		
		// Questão 12
		try{
			fi = new FileInputStream("c:\\aulas\\sacola.obj");
			oi = new ObjectInputStream(fi);
			sacola = (Fila) oi.readObject();
			oi.close();
		}
		catch(Exception e){
			JOptionPane.showMessageDialog(null, "Erro ao ler arquivo!");
		}
		
		// Questão 13
		resposta = JOptionPane.showInputDialog(null, "Informe um valor para fresco: ");
		fresco = Boolean.parseBoolean(resposta);
		resposta = JOptionPane.showInputDialog(null, "Informe um valor para sementes: ");
		sementes = Integer.parseInt(resposta);
		fru = new Fruta(fresco, sementes);
		try{
			sacola.inserir(fru);
		}
		catch(FilaCheiaException e){
			JOptionPane.showMessageDialog(null, "Sacola Cheia !");
		}
		
		// Questão 14
		try{
			fo = new FileOutputStream("c:\\aulas\\sacola.obj");
			oo = new ObjectOutputStream(fo);
			oo.writeObject(sacola);
			oo.close();
		}
		catch(IOException e){
			JOptionPane.showMessageDialog(null, "Error ao escrever arquivo!");
		}
		
		// Questão 15
		try{
			fru = sacola.remover();
			JOptionPane.showMessageDialog(null, "Fresco = "+fru.getFresco()+" Sementes = "+fru.getSementes());
		}
		catch(FilaVaziaException e){
			JOptionPane.showMessageDialog(null, "Sacola Vazia !");
		}
	}
}
