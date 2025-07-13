package com.onlineexam.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.main.util.DBConnection;
import com.onlineexam.model.ExamTemplate;
import com.onlineexam.model.Organisation;

public class ExamTemplateDao implements IDao<ExamTemplate> {
    List<ExamTemplate> l=new ArrayList<>();
    DBConnection connection;

    
    public ExamTemplateDao() {
		super();
	}
	
	public ExamTemplateDao(DBConnection connection) {
		super();
		this.connection=connection;
	}
	public int countexams() throws SQLException, ClassNotFoundException {
		int myCount = 0; // Initialize myCount

		// No need to explicitly load driver for newer Oracle JDBC drivers

		try {Connection c = connection.getConnection();
				PreparedStatement selectStatement = c
						.prepareStatement("SELECT COUNT(DISTINCT examtemplateid) FROM examtemplate");
				ResultSet resultSet = selectStatement.executeQuery();

			while (resultSet.next()) {
				myCount = resultSet.getInt(1);
			}
		} catch (SQLException e) {
			// Log the exception or throw a custom exception
			e.printStackTrace();
			throw e; // Re-throwing the exception for higher level handling
		}

		return myCount;
	}
	
	@Override
	public ExamTemplate create(ExamTemplate t) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=connection.getConnection();
		//System.out.println("hello");
		PreparedStatement st=c.prepareStatement("insert into ExamTemplate(OrganisationId,subjectId,questionid,Description,Duration,PassingCriteria) values(?,?,?,?,?,?)");
		st.setInt(1, t.getOrganisationI());
		st.setInt(2, t.getSubjectId());
		st.setInt(3, t.getQuestionId());
		st.setString(4, t.getDescription());
		st.setInt(5, t.getDuration());
		st.setInt(6, t.getPassingCriteria());
		int z=st.executeUpdate();
		return t;
	}

	@Override
	public boolean update(int id, ExamTemplate t) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int id) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public ExamTemplate findOne(int id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ExamTemplate> findAll() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
			Connection c=connection.getConnection();
			Statement selectStatement = c.createStatement();

			final String sqlQuery ="SELECT s.subjectname, o.organisationname, et.description, et.examtemplateid\r\n"
					+ "FROM ExamTemplate et\r\n"
					+ "JOIN subject s ON s.subjectid = et.subjectid\r\n"
					+ "JOIN organisation o ON o.organisationid = et.organisationid\r\n"
					+ "GROUP BY s.subjectname, o.organisationname, et.description, et.examtemplateid\r\n"
					+ "ORDER BY et.examtemplateid DESC;\r\n"
					+ ";";

			ResultSet resultSet = selectStatement.executeQuery(sqlQuery);
			
			List<ExamTemplate> MyExamTemplate = new ArrayList<>();
			

			while (resultSet.next()) {
				ExamTemplate ExamTemplate = new ExamTemplate(resultSet.getString(1), resultSet.getString(2),
						resultSet.getString(3));
				MyExamTemplate.add(ExamTemplate);
				System.out.println("item" + MyExamTemplate);
			}

			if (MyExamTemplate.isEmpty())
				return null;

			return MyExamTemplate;
		}
	
	
	public List<ExamTemplate> findtop() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");
	    // Make sure to handle appropriate exceptions here.
	    try { Connection c=connection.getConnection();
	        PreparedStatement selectStatement = c.prepareStatement(
	                "SELECT s.subjectName, o.organisationName, et.description\r\n"
	                + "FROM ExamTemplate et\r\n"
	                + "JOIN subject s ON s.subjectId = et.subjectId\r\n"
	                + "JOIN Organisation o ON o.organisationId = et.organisationId\r\n"
	                + "GROUP BY s.subjectName, o.organisationName, et.description\r\n"
	                + "LIMIT 5;\r\n"
	                + "");

	        ResultSet resultSet = selectStatement.executeQuery();
	        List<ExamTemplate> MyExamTemplate = new ArrayList<>();

	        while (resultSet.next()) {
	            ExamTemplate ExamTemplate = new ExamTemplate(resultSet.getString(1),
	                                                          resultSet.getString(2),
	                                                          resultSet.getString(3));
	            MyExamTemplate.add(ExamTemplate);
	            //System.out.println("item" + MyExamTemplate);
	        }

	        if (MyExamTemplate.isEmpty())
	            return null;

	        return MyExamTemplate;
	    
	    }catch(Exception e) {}
	    return null;    
	}
}
