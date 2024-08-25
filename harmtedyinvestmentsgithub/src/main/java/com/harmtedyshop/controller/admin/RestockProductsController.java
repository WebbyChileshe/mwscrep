package com.harmtedyshop.controller.admin;

import java.io.IOException;
import java.sql.SQLException;

import com.harmtedyshop.dao.admin.ProductDAO;
import com.harmtedyshop.model.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@SuppressWarnings("serial")
public class RestockProductsController extends HttpServlet {


	private ProductDAO productDAO;

	@Override
	public void init() throws ServletException {
		super.init();
		productDAO = new ProductDAO();
	}


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Retrieve form parameters
		String productName = request.getParameter("product_name");
		String description = request.getParameter("description");
		double price = Double.parseDouble(request.getParameter("price"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		int branchId = Integer.parseInt(request.getParameter("branch")); // Added branch_id parameter
		int categoryId = Integer.parseInt(request.getParameter("category")); // Retrieve selected category

		// Create a Product object
		Product product = new Product();
		product.setProductName(productName);
		product.setDescription(description);
		product.setPrice(price);
		product.setQuantityInStock(quantity);
		product.setBranchId(branchId); // Set branch ID
		product.setCategoryId(categoryId); // Set category ID

		try {
			// Add product to database
			productDAO.addProduct(product);

			// Redirect to a success page or another relevant page
			response.sendRedirect(request.getContextPath() + "/warehouseproducts");
		} catch (SQLException e) {
			// Handle SQL exception and show an error message
			e.printStackTrace();
			request.setAttribute("errorMessage", "Failed to restock product. Please try again.");
			request.getRequestDispatcher("/WEB-INF/views/admin/warehouseproducts.jsp").forward(request, response);
		}
	}


}
