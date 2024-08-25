package com.harmtedyshop.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/cbu-branch")
@SuppressWarnings("serial")
public class CBUBranchController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Forward the request to index.jsp
		request.getRequestDispatcher("/WEB-INF/views/dashboard/cbu_branch.jsp").forward(request, response);

	}
}
