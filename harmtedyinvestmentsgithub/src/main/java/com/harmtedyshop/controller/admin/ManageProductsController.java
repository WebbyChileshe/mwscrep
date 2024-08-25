package com.harmtedyshop.controller.admin;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.harmtedyshop.dao.admin.ProductDAO;
import com.harmtedyshop.dao.branch.BranchDAO;
import com.harmtedyshop.model.Branch; // Assuming you have a Branch model
import com.harmtedyshop.model.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@SuppressWarnings("serial")
@WebServlet("/warehouseproducts")
public class ManageProductsController extends HttpServlet {
    private ProductDAO productDAO = new ProductDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Fetch products and branches
            List<Product> products = productDAO.getAllProducts();
            List<Branch> branches = BranchDAO.getAllBranches(); // Get the list of branches

            // Get selected branch ID from request, if available
            String branchIdParam = request.getParameter("branchId");
            if (branchIdParam != null && !branchIdParam.isEmpty()) {
                int branchId = Integer.parseInt(branchIdParam);
                products = productDAO.getProductsByBranch(branchId); // Filter products by selected branch
            }

            request.setAttribute("products", products);
            request.setAttribute("branches", branches);

            // Forward to JSP page
          request.getRequestDispatcher("/WEB-INF/views/admin/warehouseproducts.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Failed to retrieve products.");
        }
    }
}



