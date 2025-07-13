package com.main.Servlet;

import java.io.IOException;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.main.util.DBConnection;

import java.sql.*;

@WebServlet("/AvailableExamServlet")
public class AvailableExamServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession s=request.getSession(false);
		
		
		String value=request.getParameter("exam");
		List<String> li=new ArrayList<>();
		int subjectId=0;
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			DBConnection dbConnection = DBConnection.getDbConnnection();
			Connection c = dbConnection.getConnection();
			//System.out.println(c);
			PreparedStatement ps=c.prepareStatement("select subjectId from subject where subjectName=?");
			ps.setString(1, value);
			ResultSet r1=ps.executeQuery();
			r1.next();
			//System.out.println(r1.getInt(1));
			
			
			//System.out.println("checked");
		    PreparedStatement ps1=c.prepareStatement("SELECT * FROM Questions where subjectId=?");
		    subjectId=r1.getInt(1);
     		ps1.setInt(1, subjectId);
		    ResultSet r2=ps1.executeQuery();	
		    
			while(r2.next())
				{
				//System.out.println(r2.getString(3));
						li.add(r2.getString(3));
					
				}
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	
		request.setAttribute("li", li);
		s.setAttribute("subject", subjectId);
		request.getRequestDispatcher("SelectedExam.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
