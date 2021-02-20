package com.suam.web2.bean;

public class Autor {
	private int Codigo;
	private String Nome;
	
	public Autor(String nome) {
		Nome = nome;
	}
	
	public int getCodigo() {
		return Codigo;
	}
	
	public void setCodigo(int codigo) {
		Codigo = codigo;
	}
	
	public String getNome() {
		return Nome;
	}
	
	public void setNome(String nome) {
		Nome = nome;
	}
}
