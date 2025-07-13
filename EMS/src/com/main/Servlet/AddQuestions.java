package com.main.Servlet;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.main.util.DBConnection;
import com.onlineexam.Dao.QuestionsDao;
import com.onlineexam.model.Questions;

@WebServlet("/AddQuestions")
public class AddQuestions extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DBConnection dbConnection = DBConnection.getDbConnnection();
		HttpSession s=request.getSession(false);
		String decision=request.getParameter("btn");
		//System.out.println(questions);
		String questiontext=request.getParameter("questionText");
		String questiontype=request.getParameter("questionType");
		String option1=request.getParameter("option1");
		String option2=request.getParameter("option2");
		String option3=request.getParameter("option3");
		String option4=request.getParameter("option4");
		String points = request.getParameter("points");
		String correctAnswer = request.getParameter("correctAnswer");
		int subjectId=(int) s.getAttribute("subject");
		//List<String> ques=new ArrayList<>();
		Questions obj=new Questions(subjectId,questiontext,questiontype,option1,option2,option3,option4,Integer.parseInt(points),correctAnswer);
		//System.out.println(que.get(0).getQuestionText());
		
		List<Questions> que=(List<Questions>) s.getAttribute("que");
		que.add(obj);
		//System.out.println(que);
		s.setAttribute("que",que);
		
		if(decision.equals("Add New Question")) {
			
			request.getRequestDispatcher("AddQuestions.jsp").forward(request, response);
		}
		else {
			
			
			//System.out.println("hello");
			QuestionsDao qdao=new QuestionsDao(dbConnection);
			for(Questions q:que) {
				try {
					qdao.create(q);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			
			request.getRequestDispatcher("createExam.jsp").forward(request, response);
			
		}
		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     doPost(request,response);
	}

}
