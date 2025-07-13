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
import com.onlineexam.Dao.ExamTemplateDao;
import com.onlineexam.Dao.OrganisationDao;
import com.onlineexam.Dao.QuestionsDao;
import com.onlineexam.model.ExamTemplate;
import com.onlineexam.model.Organisation;
import com.onlineexam.model.Questions;



@WebServlet("/createExamServlet")
public class createExamServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession s=request.getSession(false);
		List<Integer> l1=new ArrayList<>();
		//System.out.println(s.getAttribute("subject"));
		String name=request.getParameter("OrganisationName");
		String description=request.getParameter("examDescription");
		int duration=Integer.parseInt(request.getParameter("examDuration"));
		int  passingCriteria=Integer.parseInt(request.getParameter("passingCriteria"));
		
		
		DBConnection dbConnection = DBConnection.getDbConnnection();
		OrganisationDao obj=new OrganisationDao(dbConnection);
		
		Organisation Oname=new Organisation(name);
		
		QuestionsDao question=new QuestionsDao(dbConnection);
		
		
		Organisation Odetails=null;
		int organisationId=0;
		int subjectId=(int) s.getAttribute("subject");
		
		try {
			
			int check=obj.findOne(Oname);
			if(check==0) {
				Odetails=obj.create(Oname);  
				organisationId=Odetails.getOrganisationId();
			}
			else {
				organisationId=check;
				//System.out.println(organisationId);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	//System.out.println((String[]) s.getAttribute("selectedQuestions"));
		
	if((String[]) s.getAttribute("selectedQuestions")!=null) {
		
		//System.out.println("c");
		try {
			l1=question.findAllId((String[]) s.getAttribute("selectedQuestions"));
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		//System.out.println("c1"); 
		ExamTemplate examTemplate=null;
		ExamTemplateDao examTemplateDao=new ExamTemplateDao(dbConnection);
		for(int i:l1) {
           examTemplate=new ExamTemplate(organisationId,subjectId,i,description,duration,passingCriteria);
	           try {
	   			ExamTemplate examTemplate1=examTemplateDao.create(examTemplate);
	   		} catch (Exception e) {
	   			e.printStackTrace();
	   		}
		}
	}
		List<Questions> que=(List<Questions>) s.getAttribute("que");
		ExamTemplate examTemplate=null;
		ExamTemplateDao examTemplateDao=new ExamTemplateDao(dbConnection);
		if(que!=null) {
			for(Questions q:que) {
				//System.out.println(q.getQuestionid());
		           examTemplate=new ExamTemplate(organisationId,subjectId,q.getQuestionid(),description,duration,passingCriteria);
			           try {
			   			ExamTemplate examTemplate1=examTemplateDao.create(examTemplate);
			   		} catch (Exception e) {
			   			e.printStackTrace();
			   		}
				}
		}
//		HttpSession session=request.getSession();
     	request.getRequestDispatcher("AdminDashboard.jsp").forward(request,response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
