package com.main.Servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.main.util.DBConnection;
import com.onlineexam.Dao.AnswerDao;
import com.onlineexam.Dao.ResultDao;
import com.onlineexam.Dao.StudentDao;
import com.onlineexam.model.Answer;
import com.onlineexam.model.Questions;
import com.onlineexam.model.Result;
import com.onlineexam.model.Subject;


@WebServlet("/Result")
public class ResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter pw=response.getWriter();
		HttpSession s=request.getSession(false);
		String studentEmail=(String) s.getAttribute("useremail");
	    String studentPassword=(String) s.getAttribute("userpassword");
	    //float percentage=(float) s.getAttribute("percent");
	    
	   //String OrganisationName=(String) s.getAttribute("OrganisationName");
		int organisationId=(int) s.getAttribute("currentOrganisationId");
		Subject sub=(Subject) s.getAttribute("selectedSubject");
		ArrayList<Integer> questionIds=(ArrayList<Integer>) s.getAttribute("qid");
		ArrayList<String> Answer=(ArrayList<String>) s.getAttribute("answer");
		ArrayList<Questions> questions=(ArrayList<Questions>) s.getAttribute("questionSet");
		    
		DBConnection dbConnection = DBConnection.getDbConnnection();
		StudentDao sdao=new StudentDao(dbConnection);
		int studentId=0;
		try {
			studentId = sdao.findId(studentEmail);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		AnswerDao adao=new AnswerDao(dbConnection);
		int attempt=0;
		try {
			attempt=adao.findAttemp(organisationId,sub.getSubjectId(),studentId);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		for(int i=0;i<questionIds.size();i++) {
			Answer obj=new Answer(organisationId,sub.getSubjectId(),studentId,questionIds.get(i),attempt+1,Answer.get(i));
		    try {
				adao.create(obj);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		int get=0;
		int total=0;
		for(int i=0;i<questions.size();i++) {
			if(questions.get(i).getCorrectOption().equals(Answer.get(i))) {
				get+=questions.get(i).getPoint();
				total+=questions.get(i).getPoint();
			}
			else {
				total+=questions.get(i).getPoint();
			}
		}
	
		float percent=(get*100)/total;
        
		   
		String status;
		if(percent>=Integer.parseInt((String)s.getAttribute("passingCriteria"))) {
			status="Pass";
		}
		else {
			status="Fail";
		}
		Result result= new Result(organisationId,sub.getSubjectId(),studentId,attempt+1,get,status,"Thank you");
		ResultDao rdao=new ResultDao(dbConnection);
		
		try {
			rdao.create(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//pw.println("<h1>"+status +"</h1>");
		
		
		//String result1 = "Results for: Email=" + studentEmail + ", Organization=" + OrganisationName + ", Subject=" + sub + "Status ="+status;
		 s.setAttribute("organizationId", organisationId);
		// s.setAttribute("organizationName", OrganisationName);
		 
		s.setAttribute("email", studentEmail);
       
        s.setAttribute("subjectName", sub);
        s.setAttribute("result", status);
       // s.setAttribute("percent", percentage);

        // Redirect to the JSP page
        response.sendRedirect("ShowResult.jsp");
		
	}

}
