package com.harmtedyshop.dao.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.harmtedyshop.model.Product;
import com.harmtedyshop.util.DBConnection;

public class ProductDAO {

	private static final String retrieveProducts = "SELECT p.product_id, p.product_name, p.description, p.price, p.quantity_in_stock, "
			+ "b.branch_name, c.category_name " + "FROM product p " + "JOIN branch b ON p.branch_id = b.branch_id "
			+ "JOIN category c ON p.category_id = c.category_id " + "ORDER BY b.branch_name";

	private static final String deleteQuery = "DELETE FROM product WHERE product_id = ?";
	private static final String updateQuery = "UPDATE product SET product_name = ?, description = ?, price = ?, quantity_in_stock = ? WHERE product_id = ?";
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

//	retrueve products sorting them by branch names
	public List<Product> getAllProducts() throws SQLException {
		List<Product> products = new ArrayList<>();
		String sql = retrieveProducts;
		try (Connection conn = DBConnection.getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql);
				ResultSet rs = stmt.executeQuery()) {
			while (rs.next()) {
				Product product = new Product();
				product.setProductId(rs.getInt("product_id"));
				product.setProductName(rs.getString("product_name"));
				product.setDescription(rs.getString("description"));
				product.setPrice(rs.getDouble("price"));
				product.setQuantityInStock(rs.getInt("quantity_in_stock"));
				product.setBranchName(rs.getString("branch_name"));
				product.setCategoryName(rs.getString("category_name"));
				products.add(product);
			}
		}
		return products;
	}



//	get products by id

	 public Product getProductById(int id) throws SQLException {
	        String sql = "SELECT * FROM product WHERE product_id = ?";
	        try (Connection conn = DBConnection.getConnection();
	             PreparedStatement stmt = conn.prepareStatement(sql)) {

	            stmt.setInt(1, id);
	            try (ResultSet rs = stmt.executeQuery()) {
	                if (rs.next()) {
	                    Product product = new Product();
	                    product.setProductId(rs.getInt("product_id"));
	                    product.setProductName(rs.getString("product_name"));
	                    product.setDescription(rs.getString("description"));
	                    product.setPrice(rs.getDouble("price"));
	                    product.setQuantityInStock(rs.getInt("quantity_in_stock"));
//	                    product.setCategoryName(rs.getString("category_name"));
//	                    product.setBranchName(rs.getString("branch_name"));
	                    return product;
	                }
	            }
	        }
	        return null;
	    }


//	 update

	 public void updateProduct(Product product) throws SQLException {
	        String sql = updateQuery;
	        try (Connection conn = DBConnection.getConnection();
	             PreparedStatement stmt = conn.prepareStatement(sql)) {

	            stmt.setString(1, product.getProductName());
	            stmt.setString(2, product.getDescription());
	            stmt.setDouble(3, product.getPrice());
	            stmt.setInt(4, product.getQuantityInStock());
	            stmt.setInt(5, product.getProductId());
	            stmt.executeUpdate();
	        }
	    }

	    public void deleteProduct(int id) throws SQLException {
	        String sql = deleteQuery;
	        try (Connection conn = DBConnection.getConnection();
	             PreparedStatement stmt = conn.prepareStatement(sql)) {

	            stmt.setInt(1, id);
	            stmt.executeUpdate();
	        }
	    }


//	    method to reduce products
	    public void reduceProductQuantity(int productId, int quantity) throws SQLException {
	        String sql = "UPDATE product SET quantity_in_stock = quantity_in_stock - ? WHERE product_id = ?";
	        try (Connection conn = DBConnection.getConnection();
	             PreparedStatement stmt = conn.prepareStatement(sql)) {

	            stmt.setInt(1, quantity);
	            stmt.setInt(2, productId);
	            stmt.executeUpdate();
	        }
	    }



	    public void increaseBranchProductQuantity(int branchId, int productId, int quantity) throws SQLException {
	        String checkSql = "SELECT quantity_in_stock FROM product WHERE branch_id = ? AND product_id = ?";
	        String updateSql = "UPDATE product SET quantity_in_stock = quantity_in_stock + ? WHERE branch_id = ? AND product_id = ?";
	        String insertSql = "INSERT INTO product (product_name, description, price, quantity_in_stock, branch_id, category_id) "
	                + "SELECT product_name, description, price, ?, ?, category_id FROM product WHERE product_id = ? AND branch_id = ?";

	        try (Connection conn = DBConnection.getConnection()) {
	            // Check if the product already exists in the target branch
	            try (PreparedStatement checkStmt = conn.prepareStatement(checkSql)) {
	                checkStmt.setInt(1, branchId);
	                checkStmt.setInt(2, productId);
	                ResultSet rs = checkStmt.executeQuery();

	                if (rs.next()) {
	                    // Product exists in the target branch, update the quantity
	                    try (PreparedStatement updateStmt = conn.prepareStatement(updateSql)) {
	                        updateStmt.setInt(1, quantity);
	                        updateStmt.setInt(2, branchId);
	                        updateStmt.setInt(3, productId);
	                        updateStmt.executeUpdate();
	                    }
	                } else {
	                    // Product doesn't exist in the target branch, insert it
	                    try (PreparedStatement insertStmt = conn.prepareStatement(insertSql)) {
	                        insertStmt.setInt(1, quantity);
	                        insertStmt.setInt(2, productId);
	                        insertStmt.setInt(3, branchId);
	                        insertStmt.executeUpdate();
	                    }
	                }
	            }
	        }
	    }



	    public List<Product> getProductsByBranch(int branchId) throws SQLException {
	        List<Product> products = new ArrayList<>();
	        String sql = "SELECT * FROM product WHERE branch_id = ?";

	        try (Connection conn = DBConnection.getConnection();
	             PreparedStatement stmt = conn.prepareStatement(sql)) {
	            stmt.setInt(1, branchId);
	            try (ResultSet rs = stmt.executeQuery()) {
	                while (rs.next()) {
	                    Product product = new Product();
	                    product.setProductId(rs.getInt("product_id"));
	                    product.setProductName(rs.getString("product_name"));
	                    product.setDescription(rs.getString("description"));
	                    product.setPrice(rs.getDouble("price"));
	                    product.setQuantityInStock(rs.getInt("quantity_in_stock"));
	                    product.setBranchName(rs.getString("branch_name"));
	                    product.setCategoryName(rs.getString("category_name"));
	                    products.add(product);
	                }
	            }
	        }
	        return products;
	    }




}
