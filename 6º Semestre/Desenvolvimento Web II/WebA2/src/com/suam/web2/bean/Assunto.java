package com.suam.web2.bean;

public class Assunto {
	private int Codigo;
	private String Descricao;
	
	public Assunto(String descricao) {
		Descricao = descricao;
	}
	
	public int getCodigo() {
		return Codigo;
	}
	
	public void setCodigo(int codigo) {
		Codigo = codigo;
	}
	
	public String getDescricao() {
		return Descricao;
	}
	
	public void setDescricao(String descricao) {
		Descricao = descricao;
	}
}
