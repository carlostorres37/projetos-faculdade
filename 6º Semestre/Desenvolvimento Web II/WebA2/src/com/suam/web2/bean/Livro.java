package com.suam.web2.bean;

public class Livro {
	private int Codigo;
	private String Titulo;
	private double Preco;
	private int Ano;
	private int Paginas;
	private String Imagem;
	private char Status;
	
	public Livro(String titulo, double preco, int ano, int paginas, String imagem, char status) {
		Titulo = titulo;
		Preco = preco;
		Ano = ano;
		Paginas = paginas;
		Imagem = imagem;
		Status = status;
	}
	
	public int getCodigo() {
		return Codigo;
	}
	
	public void setCodigo(int codigo) {
		Codigo = codigo;
	}
	
	public String getTitulo() {
		return Titulo;
	}
	
	public void setTitulo(String titulo) {
		Titulo = titulo;
	}
	
	public double getPreco() {
		return Preco;
	}
	
	public void setPreco(double preco) {
		Preco = preco;
	}
	
	public int getAno() {
		return Ano;
	}
	
	public void setAno(int ano) {
		Ano = ano;
	}
	
	public int getPaginas() {
		return Paginas;
	}
	
	public void setPaginas(int paginas) {
		Paginas = paginas;
	}
	
	public String getImagem() {
		return Imagem;
	}
	
	public void setImagem(String imagem) {
		Imagem = imagem;
	}
	
	public char getStatus() {
		return Status;
	}
	
	public void setStatus(char status) {
		Status = status;
	}
}
