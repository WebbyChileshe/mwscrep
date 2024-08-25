package com.harmtedyshop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.harmtedyshop.util.DBConnection;

public class AdminDAO {

	public String loginQuery = "SELECT role FROM admin WHERE role = ? AND username = ? AND password = ?";
	public String roleQuery = "SELECT role FROM admin WHERE username = ?";

	// Login authentication
	public String authenticateUser(String branch, String username, String password) throws SQLException {
		String role = null;
		String query = loginQuery;

		try (Connection conn = DBConnection.getConnection(); PreparedStatement pstmt = conn.prepareStatement(query)) {

			pstmt.setString(1, branch);
			pstmt.setString(2, username);
			pstmt.setString(3, password);

			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					role = rs.getString("role"); // Retrieve role from result set
				}
			}
		}

		return role;
	}

	// Method to get the role of the currently logged-in user
	public String getRoleByUsername(String username) throws SQLException {
		String role = null;
		String query = roleQuery;

		try (Connection conn = DBConnection.getConnection(); PreparedStatement pstmt = conn.prepareStatement(query)) {

			pstmt.setString(1, username);

			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					role = rs.getString("role"); // Retrieve role from result set
				}
			}
		}

		return role;
	}

//    method to add a product

}
