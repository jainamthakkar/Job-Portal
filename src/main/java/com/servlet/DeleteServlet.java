package com.servlet;

import java.io.IOException;

import com.DB.DBConnect;
import com.dao.JobDAO;
import com.entity.Jobs;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			String idString = req.getParameter("id");
			int id = Integer.parseInt(idString);

			JobDAO dao = new JobDAO(DBConnect.getConn());
			boolean f = dao.deleteJob(id);

			HttpSession session = req.getSession();
			if (f) {
				session.setAttribute("succMsg", "Job Posted Successfully!!");
				resp.sendRedirect("viewJob.jsp");
			} else {
				session.setAttribute("errMsg", "Something went wrong!!");
				resp.sendRedirect("viewJob.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
