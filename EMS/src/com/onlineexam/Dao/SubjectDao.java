package com.onlineexam.Dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.main.util.DBConnection;

import com.onlineexam.model.Subject;

public class SubjectDao implements IDao<Subject> {
    List<Subject> l=new ArrayList<>();
    DBConnection connection;

    
    public SubjectDao() {
		super();
	}
	
	public SubjectDao(DBConnection connection) {
		super();
		this.connection=connection;
	}

		@Override
		public Subject create(Subject t) throws Exception {
			Class.forName("com.mysql.jdbc.Driver");
			Connection c=connection.getConnection();
			PreparedStatement st=c.prepareStatement("insert into Subject(subjectName) values(?)");
			st.setString(1, t.getSubjectName());
			st.executeUpdate();
			
			PreparedStatement st1=c.prepareStatement("select subjectId from subject where subjectName=?");
			st1.setString(1, t.getSubjectName());
			ResultSet rs=st1.executeQuery();
			rs.next();
			t.setSubjectId(rs.getInt(1));
			return t;
		}
		@Override
		public boolean update(int id, Subject t) throws Exception {
			// TODO Auto-generated method stub
			return false;
		}
		@Override
		public boolean delete(int id) throws Exception {
			// TODO Auto-generated method stub
			return false;
		}
		@Override
		public Subject findOne(int id) throws Exception {
			// TODO Auto-generated method stub
			return null;
		}
		@Override
		public List<Subject> findAll() throws Exception {
			// TODO Auto-generated method stub
			return null;
		}
		
		public int getSubjectId(String subjectName) throws Exception {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = connection.getConnection();
			PreparedStatement st = con.prepareStatement("select subjectId from subject where subjectName = ?");
			st.setString(1, subjectName);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				return rs.getInt(1);
			}
			return 0;
		}
}