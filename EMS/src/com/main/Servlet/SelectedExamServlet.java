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

import com.onlineexam.model.Questions;



@WebServlet("/SelectedExamServlet")
public class SelectedExamServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   
		   HttpSession s=request.getSession(false);
		   String decision=request.getParameter("btn");
		   List<Questions> que=new ArrayList<>(); //for add questions
		   s.setAttribute("selectedQuestions", null);
		   if(decision.equals("Save Questions")) {
			   String[] selectedQuestions = request.getParameterValues("question");
			   
			   s.setAttribute("selectedQuestions", selectedQuestions);
//			   for(String s1:selectedQuestions) {
//				   System.out.println(s1);
//			   }
			 //  System.out.println("check1"+selectedQuestions);
			   request.getRequestDispatcher("createExam.jsp").forward(request, response);
		   }
		   else {
			   String[] selectedQuestions = request.getParameterValues("question");
			  // System.out.println("check"+selectedQuestions);
			   if(selectedQuestions!=null) {
			      s.setAttribute("selectedQuestions", selectedQuestions);
			   }
			   s.setAttribute("que", que);
			   request.getRequestDispatcher("AddQuestions.jsp").forward(request, response);
			   
		   }
		    // String []questions=request.getParameterValues("question");
//			 String []questiontext=request.getParameterValues("questionText");
//			 String  []questiontype=request.getParameterValues("questionType");
//			 String []option1=request.getParameterValues("option1");
//			 String []option2=request.getParameterValues("option2");
//			 String []option3=request.getParameterValues("option3");
//			 String []option4=request.getParameterValues("option4");
//			 String[] pointsStrings = request.getParameterValues("points");
//			 int[] points = new int[pointsStrings.length];
//			 for (int i = 0; i < pointsStrings.length; i++) {
//			     points[i] = Integer.parseInt(pointsStrings[i]);
//			 }
//			 String []correctAnswer=request.getParameterValues("correctAnswer");

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
