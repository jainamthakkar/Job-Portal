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

@WebServlet("/update_profile")
public class UpdateUserProfileServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String name = req.getParameter("fullName");
			String email = req.getParameter("email");
			String ps = req.getParameter("password");
			String qua = req.getParameter("qualification");
			
			UserDAO dao = new UserDAO(DBConnect.getConn());
			User u = new User();
			
			u.setId(id);
			u.setName(name);
			u.setEmail(email);
			u.setPassword(ps);
			u.setQualification(qua);
			
			boolean f = dao.updateUser(u); 
			
			HttpSession session = req.getSession();

			if (f) {
				session.setAttribute("succMsg", "Registration Successfully");
				resp.sendRedirect("edit_profile.jsp");
			}else {
				session.setAttribute("succMsg", "Something wrong on server");
				resp.sendRedirect("edit_profile.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
