package com.suam.web2.factory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	private static final String URL = "jdbc:mysql://127.0.0.1/questaoum";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "root";
	
	public static Connection getConnection() {
		Connection conn = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			conn.setAutoCommit(false);
			return conn;
		} catch (ClassNotFoundException e) {
			System.out.println("O driver expecificado não foi encontrado");
			return null;
		} catch (SQLException e) {
			System.out.println("Não foi possível conectar ao banco de dados.");
			return null;
		}
	}
}
