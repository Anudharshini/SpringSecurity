/*package com.practice.springsecurity.demo.config;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLTest { 
	public static void main(String[] args) throws ClassNotFoundException { 
		Connection con = null; 
		try { 
			String url = "jdbc:mysql://localhost:3306/spring_security_demo_plaintext?useSSL=false&serverTimezone=UTC"; 
			String username = "springstudent"; 
			String password = "springstudent"; 
			// Class.forName("com.mysql.jdbc.Driver"); 
			con = DriverManager.getConnection(url, username, password); 
			if (con != null) { 
				System.out .println("Successfully connected to MySQL database test"); 
				} 
			} 
		catch (SQLException ex) { 
			System.out .println("An error occurred while connecting MySQL databse"); 
			ex.printStackTrace(); } 
		} 
	}
*/