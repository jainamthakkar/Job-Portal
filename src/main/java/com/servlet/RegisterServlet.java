package com.servlet;

import java.io.IOException;

import com.dao.UserDAO;
import com.entity.User;
import com.DB.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String name = req.getParameter("fullName");
			String qua = req.getParameter("qualification");
			String email = req.getParameter("email");
			String ps = req.getParameter("password");
			
			UserDAO dao = new UserDAO(DBConnect.getConn());
			User u = new User(name, email, ps, qua, "user");
			
			boolean f = dao.addUser(u); 
			
			HttpSession session = req.getSession();

			if (f) {
				session.setAttribute("succMsg", "Registration Successfully");
				resp.sendRedirect("signup.jsp");
			}else {
				session.setAttribute("succMsg", "Something wrong on server");
				resp.sendRedirect("signup.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
