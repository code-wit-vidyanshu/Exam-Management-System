package com.main.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
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


@WebServlet("/ShowQuestions")
public class ShowQuestions extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sub=request.getParameter("selectedSubject");
		HttpSession s=request.getSession(false);
		System.out.println("show "+s);
		ArrayList<Questions> questions;
		ArrayList<Integer> questionIds;
		ArrayList<String> Answer=new ArrayList<>();
		s.setAttribute("answer", Answer);
		int organisationId=(int) s.getAttribute("currentOrganisationId");
		//System.out.println(sub+" "+organisationId);
		DBConnection dbConnection = DBConnection.getDbConnnection();
		SubjectDao sd = new SubjectDao(dbConnection); 
		int currSubId=-1;
		try {
			currSubId = sd.getSubjectId(sub);
			s.setAttribute("selectedSubject", new Subject(currSubId, sub));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		//System.out.println(currSubId);
		
		try {
			Connection con = dbConnection.getConnection();
			PreparedStatement st = con.prepareStatement("select questionid from examtemplate where organisationid = ? and subjectid = ?");
			st.setInt(1, organisationId);
			st.setInt(2, currSubId);
		
			ResultSet rs = st.executeQuery();
			questionIds = new ArrayList<>();
			while(rs.next()) {
				questionIds.add(rs.getInt(1));
//				System.out.println("Check3 "+rs.getInt(1));
			}
			
			
			questions = new ArrayList<>();
			PreparedStatement st1 = con.prepareStatement("select * from Questions where questionid = ?");
			for(int q : questionIds) {
				st1.setInt(1, q);
				ResultSet rs1 = st1.executeQuery();
				if(rs1.next()) {
					questions.add(new Questions(rs1.getInt(1), rs1.getInt(2), rs1.getString(3), rs1.getString(4), 
							rs1.getString(5), rs1.getString(6), rs1.getString(7), rs1.getString(8), rs1.getInt(9), rs1.getString(10)));
				}
//				System.out.println(rs1.getInt(1)+ " "+ rs1.getInt(2)+ " " + rs1.getString(3)+ " " + rs1.getString(4)+ " " +
//							rs1.getString(5)+ " " + rs1.getString(6)+ " " + rs1.getString(7)+ " " + rs1.getString(8)+ " " + rs1.getInt(9)+ " " + rs1.getString(10));
			}
			s.setAttribute("questionSet", questions);
			
           
			Connection c = dbConnection.getConnection();
			PreparedStatement s1 = c.prepareStatement("SELECT Description, PassingCriteria, Duration \r\n"
					+ "FROM examtemplate \r\n"
					+ "WHERE organisationid = ? AND subjectid = ?\r\n"
					+ "LIMIT 1;\r\n"
					+ "");
			s1.setInt(1, organisationId);
			s1.setInt(2, currSubId);
			ResultSet r = s1.executeQuery();
			r.next();
			//System.out.println(r.getString(1)+r.getInt(2)+" "+r.getInt(3));
			//System.out.println(questionIds);
			s.setAttribute("qid", questionIds);
			s.setAttribute("discription", r.getString(1));
			s.setAttribute("passingCriteria", r.getString(2));
			s.setAttribute("duration", r.getString(3));
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("ExamDescription.jsp");
			requestDispatcher.forward(request, response);
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}

}
