package com.harmtedyshop.controller.admin;

import java.io.IOException;
import java.sql.SQLException;

import com.harmtedyshop.dao.admin.ProductDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/disburseproduct")
public class DisburseProductController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProductDAO productDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        productDAO = new ProductDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int targetBranchId = Integer.parseInt(request.getParameter("targetBranchId"));
        int productId = Integer.parseInt(request.getParameter("productId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        try {
            // Reduce quantity in the source branch
            productDAO.reduceProductQuantity(productId, quantity);

            // Increase quantity in the target branch
            productDAO.increaseBranchProductQuantity(targetBranchId, productId, quantity);

            // Redirect or forward with success message
            request.setAttribute("successMessage", "Product successfully disbursed.");
            response.sendRedirect("warehouseproducts");
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Failed to disburse product.");
            response.sendRedirect("warehouseproducts");
        }
    }
}




//response.sendRedirect("warehouseproducts");

