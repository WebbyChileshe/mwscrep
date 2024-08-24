package com.harmtedyshop.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	// Database URL, username, and password
	private static final String URL = "jdbc:mysql://localhost:3306/harmtedyshop";
	private static final String USER = "root";
	private static final String PASSWORD = "mycall@fierodb";

	// Load the JDBC driver
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Connected succesfully");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			throw new RuntimeException("MySQL JDBC Driver not found");
		}
	}

	// Method to get a database connection
	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection(URL, USER, PASSWORD);
	}
}
