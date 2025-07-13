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
import com.onlineexam.Dao.StudentDao;
import com.onlineexam.model.Organisation;
import com.onlineexam.model.Student;

/**
 * Servlet implementation class StudentLogin
 */
@WebServlet("/Studentlogin")
public class StudentLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String usermail = req.getParameter("mailid");
		String userpass = req.getParameter("password");
		String currOrganisation = "";
		DBConnection dbConnection;
		
		HttpSession session = req.getSession();
		System.out.println(session);
		session.setAttribute("counter", -1);
		session.setAttribute("last", 0);
		
		try {
			dbConnection = DBConnection.getDbConnnection();
			StudentDao SDao = new StudentDao(dbConnection);

			Student student = SDao.findOne(usermail);

			if (student != null) {
				if (userpass.equals(student.getPassword())) {
					session.setAttribute("sessionStudent", student);
					
					System.out.println(" Here in Student Login Servlet "+student);
					
					RequestDispatcher requestDispatcher = req.getRequestDispatcher("/StudentDashBoard.jsp");
					session.setAttribute("useremail", usermail);
					session.setAttribute("userpassword", userpass);
					session.setAttribute("username", student.getStudentName());
					session.setAttribute("userphonenumber", student.getPhoneNumber());
					session.setAttribute("userorganisation", student.getOrganisationName());
					
					
					System.out.println("Check here: "+student.getOrganisationName());
					
					
//					Logic to get available subject's exam of the current user and forwarding it
					currOrganisation = student.getOrganisationName();
					Connection con = dbConnection.getConnection();
					PreparedStatement st = con.prepareStatement("select OrganisationId from Organisation where OrganisationName = ?");
					st.setString(1, currOrganisation);
					ResultSet rs = st.executeQuery();
					int currOrgId=-1;
					if(rs.next()) {
						currOrgId = rs.getInt(1);
						session.setAttribute("currentOrganisationId", currOrgId);
						session.setAttribute("sessionOrganisation", new Organisation(currOrgId, currOrganisation));
					}
					st = con.prepareStatement("select distinct(subjectName) from ExamTemplate e inner join subject s on e.subjectId = s.subjectId where OrganisationId = ?");
					st.setInt(1, currOrgId);
					rs = st.executeQuery();
					ArrayList<String> currSubjects = new ArrayList<String>();
					while(rs.next()) {
						currSubjects.add(rs.getString(1));
					}
					session.setAttribute("subjects", currSubjects);
					
					
					
					requestDispatcher.forward(req, resp);
					
				} 
			else {
					session.setAttribute("error", "Please Enter Valid Password");
					resp.sendRedirect("StudentLogin.jsp");
				}

			} else {

				session.setAttribute("error", "Please Enter Valid Email");
				resp.sendRedirect("StudentLogin.jsp");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
