package com.servlet;

import java.io.IOException;

import com.DB.DBConnect;
import com.entity.User;
import com.dao.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			String em = req.getParameter("email");
			String ps = req.getParameter("password");
			User u = new User();
			HttpSession session = req.getSession();

			if ("admin@gmail.com".equals(em) && "admin@123".equals(ps)) {
				session.setAttribute("userobj", u);
				u.setRole("admin");
				resp.sendRedirect("admin.jsp");
			}else {
				
				UserDAO dao = new UserDAO(DBConnect.getConn());
				User user = dao.login(em, ps);
				
				if(user != null) {
					session.setAttribute("userobj", user);
					resp.sendRedirect("viewJob_user.jsp");
				}else {
					session.setAttribute("succMsg", "Invalid Email or Password");
					resp.sendRedirect("login.jsp");
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
