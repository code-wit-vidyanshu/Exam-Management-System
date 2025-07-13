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



@WebServlet("/StudentUpdatePassword")
public class StudentUpdatePassword extends HttpServlet {

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
			
			String newpass = req.getParameter("newPassword");
			String newconfirmpass = req.getParameter("confirmNewPassword");

			Connection connection = dbConnection.getConnection();
			StudentDao Dao = new StudentDao(dbConnection);
			Boolean isupdate;

			String currentPassword = req.getParameter("currentPassword");

			if (password.equals(currentPassword)) {
				if (newpass.equals(newconfirmpass)) {
					if (password.equals(newpass)) {
						session.setAttribute("error", "Entered password is same as before.");
						resp.sendRedirect("StudentUpdatePassword.jsp");
					} 
					else {
						Student student = new Student(name, email,organisation, phonenumber, newpass);
						isupdate = Dao.updatepass(email, student);
						if (isupdate) {
							session.setAttribute("isupdate", isupdate);
							session.setAttribute("userpassword", newpass);
							resp.sendRedirect("StudentProfile.jsp");
						} 
						else {
							session.setAttribute("error", "Please Enter Valid Details in Proper format.");
							resp.sendRedirect("StudentUpdatePassword.jsp");

						}
					}					
				}
				else {
					session.setAttribute("error", "Entered Newpassword and confirm password does not match");
					resp.sendRedirect("StudentUpdatePassword.jsp");
				}
			} else {
				session.setAttribute("error", "Entered current password is invalid");
				resp.sendRedirect("StudentUpdatePassword.jsp");
			}

		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
