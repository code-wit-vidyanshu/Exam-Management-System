package com.main.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.main.util.DBConnection;
import com.onlineexam.Dao.StudentDao;
import com.onlineexam.model.Student;



@WebServlet("/StudentUpdateProfile")
public class StudentUpdateProfile extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DBConnection dbConnection = DBConnection.getDbConnnection();

		try {
			HttpSession session = req.getSession();
			String email = (String) session.getAttribute("useremail");
			String password = (String) session.getAttribute("userpassword");
			String name = (String) session.getAttribute("username");
			String phonenumber = (String) session.getAttribute("userphonenumber");
			String organisation= (String) session.getAttribute("userorganisation");
			
			String newname =req.getParameter("studentName");
			String newphonenumber = req.getParameter("phoneNumber");

			
			Connection connection = dbConnection.getConnection();
			StudentDao Dao = new StudentDao(dbConnection);
			Boolean isupdate;
			if (name.equals(newname) && phonenumber.equals(newphonenumber)){
				session.setAttribute("error", "Entered data is same as before.");
				resp.sendRedirect("StudentProfile.jsp");
			}
			else {
				Student student = new Student(newname, email, organisation,newphonenumber, password);
				isupdate = Dao.update(email, student);
				
				if (isupdate) {
					session.setAttribute("isupdate", isupdate);
					session.setAttribute("username", newname);
					session.setAttribute("userphonenumber", newphonenumber);

					resp.sendRedirect("StudentProfile.jsp");

				} else {
					session.setAttribute("error", "Please Enter Valid Details in Proper format.");
					resp.sendRedirect("StudentProfile.jsp");

				}
				
			}
			

		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
