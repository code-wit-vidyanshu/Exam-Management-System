package com.onlineexam.Dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.main.util.DBConnection;
import com.onlineexam.model.Organisation;
import com.onlineexam.model.Questions;

public class QuestionsDao implements IDao<Questions>{
	
	  List<Questions> l=new ArrayList<>();
	  List<Integer> l1=new ArrayList<>();
	  DBConnection connection;
	    
	   public QuestionsDao() {
			super();
		}
		
		public QuestionsDao(DBConnection connection) {
			super();
			this.connection=connection;
		}
		
		
	public List<Integer>  findAllId(String[] selectedQuestions) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=connection.getConnection();
		//System.out.println(l1);
		for(int i=0;i<selectedQuestions.length;i++) {
			    PreparedStatement st=c.prepareStatement("select QuestionID from Questions where QuestionText=?");
			    
				st.setString(1, selectedQuestions[i]);
				ResultSet rs=st.executeQuery();
				rs.next();
				l1.add(rs.getInt(1));
		}
		//System.out.println(l1);
		return l1;
	}
	
	@Override
	public Questions create(Questions t) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=connection.getConnection();
		PreparedStatement st=c.prepareStatement("insert into Questions(subjectId,QuestionText,QuestionType,Option1,Option2,Option3,Option4,Points,CorrectAnswer) values(?,?,?,?,?,?,?,?,?)");
		st.setInt(1, t.getSubjectId());
		st.setString(2, t.getQuestionText());
		st.setString(3, t.getQuestionType());
		st.setString(4, t.getOption1());
		st.setString(5, t.getOption2());
		st.setString(6, t.getOption3());
		st.setString(7, t.getOption4());
		st.setInt(8, t.getPoint());
		st.setString(9, t.getCorrectOption());
		st.executeUpdate();
		
		PreparedStatement st1=c.prepareStatement("select QuestionID from Questions where QuestionText=?");
		st1.setString(1, t.getQuestionText());
		ResultSet rs=st1.executeQuery();
		rs.next();
		t.setQuestionid(rs.getInt(1));
		
	    System.out.println(rs.getInt(1));
		
		return null;
	}

	@Override
	public boolean update(int id, Questions t) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int id) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Questions findOne(int id) throws Exception {
		return null;
	}

	@Override
	public List<Questions> findAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
