package com.main.Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.main.util.DBConnection;
import com.onlineexam.Dao.StudentDao;
import com.onlineexam.model.Student;

/**
 * Servlet implementation class AvailableStudents
 */
@WebServlet("/AvailableStudents")
public class AvailableStudents extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<Student> students;
	StudentDao sd;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession s=request.getSession(false); 
		s.setMaxInactiveInterval(1800);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			DBConnection dbConnection = DBConnection.getDbConnnection();
			sd = new StudentDao(dbConnection);
			students = sd.findAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("Students", students);
		RequestDispatcher rd = request.getRequestDispatcher("StudentsView.jsp");
		rd.forward(request, response);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}