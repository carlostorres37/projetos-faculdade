package com.suam.web2.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.suam.web2.bean.Assunto;
import com.suam.web2.factory.ConnectionFactory;

public class AssuntoService {
	
	public static void insertAssunto(Assunto assunto) throws SQLException {
		Connection conn = ConnectionFactory.getConnection();
		String sql = "INSERT INTO assunto (descricao) VALUES (?)";
		
		try {
			PreparedStatement prepStatement = conn.prepareStatement(sql);
			
			prepStatement.setString(1, assunto.getDescricao());
			
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
