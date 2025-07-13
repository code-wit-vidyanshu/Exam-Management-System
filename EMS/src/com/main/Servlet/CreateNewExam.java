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
import com.onlineexam.Dao.SubjectDao;
import com.onlineexam.model.Questions;
import com.onlineexam.model.Subject;

@WebServlet("/CreateNewExam")
public class CreateNewExam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession s=request.getSession(false);
		
		DBConnection dbConnection = DBConnection.getDbConnnection();
		String subjname=request.getParameter("subjectName");
	    Subject sub=new Subject(subjname);
	    
	    SubjectDao sd=new SubjectDao(dbConnection);
	    Subject sub1=null;
 		try {
 			sub1=sd.create(sub);
		} catch (Exception e) {
			e.printStackTrace();
		}
 		System.out.println("subject id"+sub1.getSubjectId());
	    
 		s.setAttribute("subject", sub1.getSubjectId());
 		List<Questions> que=new ArrayList<>();
 		s.setAttribute("que", que);
		request.getRequestDispatcher("AddQuestions.jsp").forward(request, response);
	}

}
