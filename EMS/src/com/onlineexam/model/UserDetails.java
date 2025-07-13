package com.onlineexam.model;

public class UserDetails {
	private int StudentId;
     public int getStudentId() {
		return StudentId;
	}
	public void setStudentId(int studentId) {
		StudentId = studentId;
	}
	private String UserName;
     private String Email;
     private String password;
     private String phonenumber;
	public UserDetails() {
		// TODO Auto-generated constructor stub
	}
	public UserDetails(String email, String password) {
		super();
		Email = email;
		this.password = password;
	}
	public UserDetails(String userName, String email, String password, String phonenumber) {
		super();
		UserName = userName;
		Email = email;
		this.password = password;
		this.phonenumber = phonenumber;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	@Override
	public String toString() {
		return "UserDetails [UserName=" + UserName + ", Email=" + Email + ", password=" + password + ", phonenumber="
				+ phonenumber + "]";
	}
	

}
