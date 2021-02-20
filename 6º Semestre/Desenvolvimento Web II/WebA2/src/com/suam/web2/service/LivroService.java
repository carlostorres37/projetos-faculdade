package com.suam.web2.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.suam.web2.bean.Livro;
import com.suam.web2.factory.ConnectionFactory;

public class LivroService {

	public static void insertLivro(Livro livro) throws SQLException {
		Connection conn = ConnectionFactory.getConnection();
		String sql = "INSERT INTO livro (titulo, preco, ano, paginas, imagem, status) "
				+ "VALUES (?,?,?,?,?,?)";
		
		try {
			PreparedStatement prepStatement = conn.prepareStatement(sql);
			
			prepStatement.setString(1, livro.getTitulo());
			prepStatement.setDouble(2, livro.getPreco());
			prepStatement.setInt(3, livro.getAno());
			prepStatement.setInt(4, livro.getPaginas());
			prepStatement.setString(5, livro.getImagem());
			prepStatement.setString(6, String.valueOf(livro.getStatus()));
			
			prepStatement.execute();
			conn.commit();
		} catch (SQLException e) {
			conn.rollback();
			e.printStackTrace();
			throw e;
		} finally {
			if(!conn.isClosed())
				conn.close();
		}
	}
	
	public static List<Livro> getLivros() throws SQLException {
		Connection conn = ConnectionFactory.getConnection();
		String sql = "SELECT * FROM livro;";
		
		try {
			PreparedStatement prepStatement = conn.prepareStatement(sql);
			ResultSet results = prepStatement.executeQuery();
			
			List<Livro> livros = new ArrayList<>();
			while(results.next()) {
				int codigo = results.getInt("codigo");
				String titulo = results.getString("titulo");
				double preco = results.getDouble("preco");
				int ano = results.getInt("ano");
				int paginas = results.getInt("paginas");
				String imagem = results.getString("imagem");
				char status = results.getString("status").charAt(0);
				
				Livro livro = new Livro(titulo, preco, ano, paginas, imagem, status);
				livro.setCodigo(codigo);
				
				livros.add(livro);
			}
			
			return livros;
		} catch (SQLException e) {
			conn.rollback();
			e.printStackTrace();
			throw e;
		} finally {
			if(!conn.isClosed())
				conn.close();
		}
	} 
	
	public static void deleteLivro(int codigo) throws SQLException {
		Connection conn = ConnectionFactory.getConnection();
		String sql = "DELETE FROM livro WHERE codigo = ?";
		
		try {
			PreparedStatement prepStatement = conn.prepareStatement(sql);
			
			prepStatement.setInt(1, codigo);
			
			prepStatement.execute();
			conn.commit();
		} catch (SQLException e) {
			conn.rollback();
			e.printStackTrace();
			throw e;
		} finally {
			if(!conn.isClosed())
				conn.close();
		}
	}
	
}
