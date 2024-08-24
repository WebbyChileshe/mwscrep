package com.harmtedyshop.dao.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.harmtedyshop.model.Product;
import com.harmtedyshop.util.DBConnection;

public class ProductDAO {
	
	
	private static final String retrieveProducts = "SELECT * FROM product";
	private static final String INSERT_PRODUCT_QUERY = "INSERT INTO product (product_name, description, price, quantity_in_stock, branch_id, category_id) VALUES (?, ?, ?, ?, ?, ?)";
// method for adding products (restocking)

	public void addProduct(Product product) throws SQLException {
		try (Connection conn = DBConnection.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(INSERT_PRODUCT_QUERY)) {

			pstmt.setString(1, product.getProductName());
			pstmt.setString(2, product.getDescription());
			pstmt.setDouble(3, product.getPrice());
			pstmt.setInt(4, product.getQuantityInStock());
			pstmt.setInt(5, product.getBranchId());
			pstmt.setInt(6, product.getCategoryId());

			pstmt.executeUpdate();
		}
	}

	
	// Method to get all products from the database
	public List<Product> getAllProducts() throws SQLException {
		List<Product> products = new ArrayList<>();
		String query =retrieveProducts;

		try (Connection connection = DBConnection.getConnection();
				Statement stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery(query)) {

			while (rs.next()) {
				Product product = new Product();
				product.setProductId(rs.getInt("product_id"));
				product.setProductName(rs.getString("product_name"));
				product.setDescription(rs.getString("description"));
				product.setPrice(rs.getDouble("price"));
				product.setQuantityInStock(rs.getInt("quantity_in_stock"));
				product.setBranchId(rs.getInt("branch_id"));
				product.setCategoryId(rs.getInt("category_id")); // Ensure this matches your table schema
				products.add(product);
			}
		}
		return products;
	}
}
