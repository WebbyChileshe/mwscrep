package com.harmtedyshop.controller;

import java.io.IOException;
import java.sql.SQLException;

import com.harmtedyshop.dao.AdminDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
@SuppressWarnings("serial")
public class LoginController extends HttpServlet {
	private AdminDAO adminDAO = new AdminDAO();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Forward the request to login.jsp
		request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String branch = request.getParameter("branch");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		try {
			// Authenticate user and get role
			String role = adminDAO.authenticateUser(branch, username, password);

			if (role != null) { // Authentication successful
				HttpSession session = request.getSession();
				session.setAttribute("username", username);
				session.setAttribute("role", role);

				// Redirect based on branch
				switch (branch) {
				case "cbu_branch":
					response.sendRedirect("cbu-branch");
					break;
				case "mu_branch":
					response.sendRedirect("mu-branch");
					break;
				case "iringa_branch":
					response.sendRedirect("iringa-branch");
					break;
				case "warehouse":
					response.sendRedirect("warehouse");
					break;
				default:
					response.sendRedirect("login.jsp?error=unknown_branch");
					break;
				}
			} else {
				request.setAttribute("errorMessage", "Invalid username or password");
				request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			response.sendRedirect("login.jsp");
		}
	}
}
