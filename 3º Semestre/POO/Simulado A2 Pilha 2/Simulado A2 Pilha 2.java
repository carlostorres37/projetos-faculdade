// simuladoA2pilha2.doc
// 1
class PilhaVaziaExcpetion extends Exception{}

clas Alimento implements Serializable(){
  private boolean cozido;
  Alimento(){
    cozido = false;
  }
  
  // 2  
  boolean getCozido(){
    return cozido;
  }
  void setCozido(boolean coz){
    cozido = coz;
  }
}

// 3
class Carne extends Aliemnto implements Serializable{
  private String tipo;  
  
  Carne(boolean coz, String tip){
    setCozido(coz);
    tipo = tip;
  }
  
  // 4
  String getTipo(){
    return tipo;
  }
  void setTipo(String tip){
    tipo = tip;
  }
}

// 5
class Nodo implements Serializable{
  Carne info;
  Nodo elo;
  
  Nodo(Carne i, Nodo e){
    info = i;
    elo = e;
  }
  
  // 6
  Carne getInfo(){
    return info;
  }
  Nodo getElo(){
    return elo;
  } 
  void setInfo(Carne i){
    info = i;
  }
  void setElo(Nodo e){
    elo = e;
  }  
}

// 7
class Pilha implements Serializable{
  private Nodo topo; 
  Pilha(){
    topo = null;
  }
  
  // 8
  void inserir(Carne car){
    if (topo == null)
      topo = new Nodo(car, null);
    else
      topo = new Nodo(car, topo.getElo());     
  }
  
}





















