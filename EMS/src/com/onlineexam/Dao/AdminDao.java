package com.onlineexam.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.main.util.DBConnection;
import com.onlineexam.model.Admin;
import com.onlineexam.model.ExamTemplate;

public class AdminDao implements IDao<Admin> {
    List<Admin> l=new ArrayList<>();
    DBConnection connection;

    
    public AdminDao() {
		super();
	}
	
	public AdminDao(DBConnection connection) {
		super();
		this.connection=connection;
	}

	@Override
	public Admin create(Admin t) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean update(int id, Admin t) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int id) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	
	public boolean validate(Admin a) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=connection.getConnection();
		final String sqlQuery = "select Password from admin where email=?";
		PreparedStatement preparedStatement = c.prepareStatement(sqlQuery);
		preparedStatement.setString(1, a.getEmail());
		ResultSet resultSet = preparedStatement.executeQuery();
		if(resultSet.next()) {
			a.setPassword(resultSet.getString(1));
			return true;
		}
		else {
		return false;
		}
	}

	@Override
	public List<Admin> findAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Admin findOne(int id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
}