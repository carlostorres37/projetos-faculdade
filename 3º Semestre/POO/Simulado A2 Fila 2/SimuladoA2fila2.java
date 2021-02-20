// 1
class FilaVaziaExcepion extends Exception{}
class Regiao implements Serializable{
	private int habitantes;
	
	Regiao(){
		habitantes = 1;
	}
	// 2 
	int getHabitantes(){
		return habitantes;
	}
	void setHabitantes(int hab){
		habitantes = hab;
	}
} 
// 3
class Cidade extends Regiao implements Serializable{
	private float territorio;
	Cidade(int hab, float ter){
		setHabitantes(hab);
		territorio = ter;
	}
	// 4
	float getTerritorio(){
		return territorio;
	}
	void setTerritorio(float ter){
		territorio = ter;
	}	
}

// 5
class Nodo implements Serializable{
	private Cidade info;
	private Nodo elo;
	
	Nodo(Cidade i, Nodo e){
		info = i;
		elo = e;
	}
	// 6
	Cidade getInfo(){
		return info;
	}
	Nodo getElo(){
		return elo;
	}
	void setInfo(Cidade i){
		info = i;
	}
	void setElo(Nodo e){
		elo = e;
	}
}

// 7
class Fila implements Serializable{
	private Nodo inicio;
	private Nodo fim;
	
	Fila(){
		inicio = null;
		fim = null;
	}
	// 8
	void inserir(Cidade cid){
		Nodo novo = new Nodo(cid, null);				
		if (inicio == null)
			inicio = novo;				
		else
			fim.setElo(novo);			
		fim = novo;
	}
	// 9
	Cidade remover() throws FilaVaziaExcpetion{
		Cidade cid;
		if (inicio != null){			
			cid = inicio.getInfo();
			inicio = inicio.getElo();
			if (inicio == null)
				fim = null;								
			return cid;	
		}else				
			throw new FilaVaziaExcpetion();				
	}
}
// 10
class EstruturaDeDados{
	public static void main(String args[]){
		Fila estado;
		Cidade cid;
		String resposta;
		int habitantes;
		float territorio;
		FileInputStream fi;
		ObjectInputStream oi;
		FileOutputStream fo;
		ObjectOutputStream oo;		
		estado = new Fila();
		
		// 11
		try{
			fi = new FileInputStream("c:\\aulas\\estado.obj");
			oi = new ObjectInputStream(fi);
			estado = (Fila)oi.readObject();			
			oi.close();
		}catch(Expection e){
			JOptionPane.showMessageDialog(null, "Erro: "+e.toString());
		}
		
		//12
		resposta = JOptionPane.showInputDialog(null, "Entre com quantidade de habitantes:");
		habitantes = Integer.parseInt(resposta);
		resposta = JOptionPane.showInputDialog(null, "Entre com o Km² do território:");
		territorio = Float.parseFloat(resposta);
		cid = new Cidade(habitantes, territorio);
		estado.inserir(cid);
		
		//13
		try{
			fo = new FileOutputStream("c:\\aulas\\estado.obj");
			oo = new ObjectOutputStream(fo);
			oo.writeObject(estado);
			oo.close();
		}catch(IOExcpection e){
			JOptionPane.showMessageDialog(null, "Erro ao inserir no arquivo");
		}
		// 14
		try{
			cid = estado.remover();
			JOptionPane.showMessageDialog(null, "Habitantes do obj removido: "+cid.getHabitantes());
			JOptionPane.showMessageDialog(null, "Território do obj removido: "+cid.getTerritorio());
		}catch(FilaVaziaExption e){
			JOptionPane.showMessageDialog(null, "Estado Vazio!");			
		}			
	}
}

