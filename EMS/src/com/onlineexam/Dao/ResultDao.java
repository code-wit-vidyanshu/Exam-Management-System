package com.onlineexam.Dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import com.main.util.DBConnection;
import com.onlineexam.model.Answer;
import com.onlineexam.model.Result;


public class ResultDao implements IDao<Result> {
    List<Result> l=new ArrayList<>();
    DBConnection connection;

 
	
	public ResultDao(DBConnection connection) {
		super();
		this.connection=connection;
	}

	@Override
	public Result create(Result t) throws Exception {

		Class.forName("com.mysql.jdbc.Driver");
		Connection c=connection.getConnection();
		final String sqlQuery = "INSERT INTO Result (OrganisationId, SubjectId, StudentId, CurrentAttempt,TotalMarks, Status,Description)VALUES (?, ?, ?, ?,?, ?,?)";		
		PreparedStatement preparedStatement = c.prepareStatement(sqlQuery);
		preparedStatement.setInt(1, t.getOrganisationId());
		preparedStatement.setInt(2, t.getSubjectId());
		preparedStatement.setInt(3, t.getStudentId());
		preparedStatement.setInt(4, t.getCurrentAttempt());
		preparedStatement.setInt(5, t.getTotalMarks());
		preparedStatement.setString(6, t.getStatus());
		preparedStatement.setString(7, t.getDescription());
		preparedStatement.executeUpdate();
		
		return null;
	}

	@Override
	public boolean update(int id, Result t) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int id) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Result findOne(int id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Result> findAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
}