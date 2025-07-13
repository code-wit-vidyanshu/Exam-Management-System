package com.onlineexam.Dao;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.main.util.DBConnection;
import com.onlineexam.model.Student;

public class StudentDao implements IDao<Student> {
	private DBConnection dbConnection;
	private List<Student> students = new ArrayList<>();

	public StudentDao() {
		super();
	}

	public StudentDao(DBConnection dbConnection) {
		super();
		this.dbConnection = dbConnection;
	}

	@Override
	public Student create(Student student) throws Exception {
		try {
			Connection connection = dbConnection.getConnection();
			String sqlQuery = "insert into student(StudentName,Email,Organisation,PhoneNumber,Password) values(?,?,?,?,?)";
			PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
			preparedStatement.setString(1, student.getStudentName());
			preparedStatement.setString(2, student.getEmail());
			preparedStatement.setString(3, student.getOrganisationName());
			preparedStatement.setString(4, student.getPhoneNumber());
			preparedStatement.setString(5, student.getPassword());

			if (preparedStatement.executeUpdate() < 0) {
				student = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return student;

	}

	@Override
	public boolean update(int id, Student t) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int id) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	

	@Override
	public List<Student> findAll() throws Exception {
		Connection con = dbConnection.getConnection();
		PreparedStatement st = con.prepareStatement("select * from student");
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			students.add(new Student(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6)));
		}
		return students;
	}

	public boolean update(String emailid, Student t) throws Exception {
		boolean result = false;
		try {
			Connection connection = dbConnection.getConnection();
			String sqlQuery = "update student set studentname=?,phonenumber=? where email=?";
			PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
			preparedStatement.setString(1, t.getStudentName());
			preparedStatement.setString(2, t.getPhoneNumber());
			preparedStatement.setString(3, emailid);
			if (preparedStatement.executeUpdate() > 0) {
				result = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;

	}

	public boolean updatepass(String emailid, Student t) throws Exception {
		boolean result = false;
		try {
			Connection connection = dbConnection.getConnection();
			String sqlQuery = "update student set password=? where email=?";
			PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
			preparedStatement.setString(1, t.getPassword());
			preparedStatement.setString(2, emailid);
			if (preparedStatement.executeUpdate() > 0) {
				result = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public Student findOne(String emailid) throws Exception {
		Connection connection = dbConnection.getConnection();
		final String sqlQuery = "select studentname,organisation,phonenumber,password from student where email=?";
		PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
		preparedStatement.setString(1, emailid);
		ResultSet resultSet = preparedStatement.executeQuery();
		Student student = null;
		if (resultSet.next()) {

			student = new Student(resultSet.getString(1), emailid, resultSet.getString(2),resultSet.getString(3), resultSet.getString(4));
		}
		return student;
	}

	
	@Override
	public Student findOne(int id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
    
	public int findId(String emailid)throws Exception {
		Connection connection = dbConnection.getConnection();
		final String sqlQuery = "select StudentId from student where email=?";
		PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
		preparedStatement.setString(1, emailid);
		ResultSet resultSet = preparedStatement.executeQuery();
		resultSet.next();
	
		return resultSet.getInt(1);
	}
}
