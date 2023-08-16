package com.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogOutServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException { // <a> tag by default calls doGet method
	
		HttpSession session = req.getSession();
		session.removeAttribute("userobj");
		session.setAttribute("succMsg", "LogOut Successfull!!");
		resp.sendRedirect("login.jsp");
	}
}
