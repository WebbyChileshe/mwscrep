package com.harmtedyshop.controller.admin;

import java.io.IOException;
import java.sql.SQLException;

import com.harmtedyshop.dao.admin.ProductService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteProductController
 */
@WebServlet("/deleteProduct")
public class DeleteProductController extends HttpServlet {
    private static final long serialVersionUID = 1L;
	private ProductService productService = new ProductService();

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        try {
            productService.deleteProduct(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        response.sendRedirect("warehouseproducts");
    }
}


