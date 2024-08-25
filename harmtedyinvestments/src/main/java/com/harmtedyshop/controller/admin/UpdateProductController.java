package com.harmtedyshop.controller.admin;

import java.io.IOException;
import java.sql.SQLException;

import com.harmtedyshop.dao.admin.ProductService;
import com.harmtedyshop.model.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/updateProduct")
public class UpdateProductController extends HttpServlet {
    private ProductService productService = new ProductService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Product product = new Product();
        product.setProductId(Integer.parseInt(request.getParameter("productId")));
        product.setProductName(request.getParameter("productName"));
        product.setDescription(request.getParameter("description"));
        product.setPrice(Double.parseDouble(request.getParameter("price")));
        product.setQuantityInStock(Integer.parseInt(request.getParameter("quantity")));

        try {
            productService.updateProduct(product);
            response.sendRedirect("warehouseproducts"); // Redirect to manage products page after update
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Failed to update product.");
        }
    }
}

