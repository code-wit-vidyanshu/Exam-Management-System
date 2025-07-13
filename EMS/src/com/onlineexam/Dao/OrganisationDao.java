package com.onlineexam.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.main.util.DBConnection;
import com.onlineexam.model.Organisation;

public class OrganisationDao implements IDao<Organisation> {
    List<Organisation> l=new ArrayList<>();
    DBConnection connection;
    
	public OrganisationDao() {
		super();
	}
	
	public OrganisationDao(DBConnection connection) {
		super();
		this.connection=connection;
	}
	

	@Override
	public Organisation create(Organisation t) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
			Connection c=connection.getConnection();
			PreparedStatement st=c.prepareStatement("insert into Organisation(OrganisationName) values(?)");
			st.setString(1, t.getOrganisationName());
			st.executeUpdate();
			PreparedStatement st1=c.prepareStatement("select OrganisationId from Organisation where OrganisationName=?");
			st1.setString(1, t.getOrganisationName());
			ResultSet rs=st1.executeQuery();
			rs.next();
			t.setOrganisationId(rs.getInt(1));
			//System.out.println(t.getOrganisationName()+" "+rs.getInt(1));
		return t;
	}

	@Override
	public boolean update(int id, Organisation t) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Organisation findOne(int id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	public int findOne(Organisation Oname) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=connection.getConnection();
		PreparedStatement st=c.prepareStatement("select OrganisationId from Organisation where OrganisationName=?");
		st.setString(1, Oname.getOrganisationName());
		ResultSet rs=st.executeQuery();
		if(rs.next()) {
			return rs.getInt(1);
		}
		
		return 0;
	}

	@Override
	public boolean delete(int id) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Organisation> findAll() throws Exception {
		Connection c=connection.getConnection();
		Statement selectStatement = c.createStatement();

		final String sqlQuery = "select * from Organisation";
		ResultSet resultSet = selectStatement.executeQuery(sqlQuery);
		
		List<Organisation> organisations=new ArrayList<>();
		
		while (resultSet.next()) {
			Organisation organisation= new Organisation(resultSet.getInt(1),resultSet.getString(2));
			organisations.add(organisation);
		}
		if (organisations.isEmpty())
			return null;
		return organisations;
	}
}