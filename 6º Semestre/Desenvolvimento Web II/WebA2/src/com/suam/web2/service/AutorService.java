package com.suam.web2.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.suam.web2.bean.Autor;
import com.suam.web2.factory.ConnectionFactory;

public class AutorService {

	public static void insertAutor(Autor autor) throws SQLException {
		Connection conn = ConnectionFactory.getConnection();
		String sql = "INSERT INTO autor (nome) VALUES (?)";
		
		try {
			PreparedStatement prepStatement = conn.prepareStatement(sql);
			
			prepStatement.setString(1, autor.getNome());
			
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
