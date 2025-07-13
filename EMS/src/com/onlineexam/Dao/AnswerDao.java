package com.onlineexam.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.main.util.DBConnection;
import com.onlineexam.model.Admin;
import com.onlineexam.model.Answer;

public class AnswerDao implements IDao<Answer> {
    List<Answer> l=new ArrayList<>();
    DBConnection connection;

    
    public AnswerDao() {
		super();
	}
	
	public AnswerDao(DBConnection connection) {
		super();
		this.connection=connection;
	}{

}

	@Override
	public Answer create(Answer t) throws Exception {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=connection.getConnection();
		final String sqlQuery = "INSERT INTO Answer (OrganisationId, SubjectId, StudentId, QuestionId,currentAttemp, GivenAnswer)VALUES (?, ?, ?, ?,?, ?)";		
		PreparedStatement preparedStatement = c.prepareStatement(sqlQuery);
		preparedStatement.setInt(1, t.getOrganisationId());
		preparedStatement.setInt(2, t.getSubjectId());
		preparedStatement.setInt(3, t.getStudentId());
		preparedStatement.setInt(4, t.getQuestionId());
		preparedStatement.setInt(5, t.getCurrentAttemp());
		preparedStatement.setString(6, t.getGivenAnswer());
		preparedStatement.executeUpdate();
		return null;
	}

	@Override
	public boolean update(int id, Answer t) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int id) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Answer findOne(int id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Answer> findAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public int findAttemp(int organisationId, int subjectId, int studentId)throws Exception  {
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=connection.getConnection();
		final String sqlQuery = "SELECT MAX(currentAttempt) \r\n"
				+ "FROM Answer \r\n"
				+ "WHERE OrganisationId = ? \r\n"
				+ "  AND SubjectId =? \r\n"
				+ "  AND StudentId = ?;\r\n"
				+ "";	
		PreparedStatement preparedStatement = c.prepareStatement(sqlQuery);
		preparedStatement.setInt(1, organisationId);
		preparedStatement.setInt(2, subjectId);
		preparedStatement.setInt(3, studentId);
		ResultSet rs=preparedStatement.executeQuery();
		if(rs.next()) {
			return rs.getInt(1);
		}
		
		return 0;
	}
}
