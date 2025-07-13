package com.main.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.main.util.DBConnection;
import com.onlineexam.Dao.AdminDao;
import com.onlineexam.model.Admin;


/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String usermail = req.getParameter("mailid");
		String userpass = req.getParameter("password");
		PrintWriter out = resp.getWriter();
		HttpSession session = req.getSession();
		session.setMaxInactiveInterval(120);
		DBConnection dbConnection = DBConnection.getDbConnnection();
		Admin obj=new Admin(usermail,userpass);
		AdminDao adao=new AdminDao(dbConnection);

		try {
			if (adao.validate(obj)) {
				  if(obj.getPassword().equals(userpass)) {
					RequestDispatcher requestDispatcher = req.getRequestDispatcher("/AdminDashboard.jsp");
					session.setAttribute("adminmail", obj.getEmail());
					session.setAttribute("adminpassword",obj.getPassword());
					requestDispatcher.forward(req, resp);
				  }
				  else {
					  session.setAttribute("error", "Please Enter Valid Password");
				 		resp.sendRedirect("AdminLogin.jsp");
				       }
				   }
			 else{
						session.setAttribute("error", "Please Enter Valid EmailId");
						resp.sendRedirect("AdminLogin.jsp");
				  }
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		

	}

}