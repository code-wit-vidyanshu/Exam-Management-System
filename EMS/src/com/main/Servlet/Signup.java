package com.main.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.main.util.DBConnection;
import com.onlineexam.Dao.StudentDao;
import com.onlineexam.model.Student;


/**
 * Servlet implementation class SignUp
 */
@WebServlet("/signup")
public class Signup extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String studentname=req.getParameter("studentName");
		String email= req.getParameter("email");
		String phonenumber=req.getParameter("phoneNumber");
		String password=req.getParameter("password");
		String organisation= req.getParameter("organisation");
		
		Student student=new Student(studentname, email,organisation ,phonenumber, password);
		
		DBConnection dbConnection=DBConnection.getDbConnnection();
		
		StudentDao SDao= new StudentDao(dbConnection);
		try {
			SDao.create(student);
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("StudentLogin.jsp");
			requestDispatcher.forward(req, resp);
		} catch (Exception e) {
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("StudentSignup.jsp");
			requestDispatcher.include(req, resp);
			e.printStackTrace();
		}
		
		
	}
	
	
}
