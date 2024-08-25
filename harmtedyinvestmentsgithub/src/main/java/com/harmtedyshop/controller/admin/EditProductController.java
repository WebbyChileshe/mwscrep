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
@WebServlet("/editproduct")
public class EditProductController extends HttpServlet {
    private ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("id"));
        Product product = null;

        try {
            product = productService.getProductById(productId); // Fetch the product by ID
        } catch (SQLException e) {
            e.printStackTrace();
            // Optionally, handle the exception by forwarding to an error page
        }

        if (product == null) {
            // Optionally, handle the case where the product is not found
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Product not found");
            return;
        }

        request.setAttribute("product", product);
        request.getRequestDispatcher("/WEB-INF/views/admin/editproduct.jsp").forward(request, response);
    }
}
