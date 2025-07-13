package com.main.Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlineexam.model.Questions;


@WebServlet("/StartExam")
public class StartExam extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession s=request.getSession(false);
		//System.out.println(s);
		
		
		//String discription = (String) s.getAttribute("discription");
		//System.out.println(discription);
	
		//System.out.println(questionIds);
		int count=(int)s.getAttribute("counter");
		String btn=request.getParameter("btn");
		ArrayList<Questions> questions;
		ArrayList<String> Answer=(ArrayList<String>) s.getAttribute("answer");
		questions=(ArrayList<Questions>) s.getAttribute("questionSet");
		
		
		if(btn== null || btn.equals("Next")) {
			
			if(btn!=null) {
				
				if(count==0) {
					Answer.add(request.getParameter("q1"));
				}
				else if(Answer.size()<=count)
				{
					Answer.add(request.getParameter("q1"));
				}
				else {
					Answer.add(count, request.getParameter("q1"));
				}
				s.setAttribute("answer", Answer);
				//System.out.println(Answer.get(count));
			}
			
			if(count>-1) {
				s.setAttribute("last", 2);
			}
			count++;
			
			if(count<questions.size()) {
				
				s.setAttribute("cque", questions.get(count));
				s.setAttribute("counter", count);
			}
			if(count+1==questions.size()){
				s.setAttribute("last", 1);
			}
			request.getRequestDispatcher("exam.jsp").forward(request,response);
			
	   	}
		else if(btn.equals("Previous")){
			s.setAttribute("last", 2);
			if(Answer.size()>=count)
			{
				if(request.getParameter("q1")!=null) {
					Answer.add(count,request.getParameter("q1"));
				}
			}
			s.setAttribute("answer", Answer);
			
			if(count!=0) {
				count--;
				s.setAttribute("cque", questions.get(count));
				s.setAttribute("counter", count);
				if(count==0) {
					s.setAttribute("last", 0);
				}
			}
			else {
				s.setAttribute("last", 0);
			}
			
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("exam.jsp");
			requestDispatcher.forward(request, response);
			
		}
		else {
			if(btn.equals("Submit")) {
				System.out.println("submit button");
				Answer.add(count,request.getParameter("q1"));
				request.getRequestDispatcher("Result").forward(request,response);
				
			}

		}
		
		//System.out.println(questions);
	}

}
