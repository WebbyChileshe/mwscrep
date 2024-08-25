package com.harmtedyshop.controller.branches;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/branchsales")
@SuppressWarnings("serial")
public class ManageBranchSalesController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Forward the request to index.jsp
		request.getRequestDispatcher("/WEB-INF/views/branches/branchsales.jsp").forward(request, response);

	}
}
