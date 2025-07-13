package com.onlineexam.model;

import java.util.Objects;

public class Student {
	private int studentId;
	private String StudentName;
	private String Email;
	private String OrganisationName;
	private String PhoneNumber;
	private String Password;
	public static int counter = 0;
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Student(String studentName, String email, String organisationName, String phoneNumber, String password) {
		super();
		StudentName = studentName;
		Email = email;
		OrganisationName = organisationName;
		PhoneNumber = phoneNumber;
		Password = password;
	}
	public Student(int studentId, String studentName, String email, String organisationName, String phoneNumber,
			String password) {
		super();
		this.studentId = studentId;
		StudentName = studentName;
		Email = email;
		OrganisationName = organisationName;
		PhoneNumber = phoneNumber;
		Password = password;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getStudentName() {
		return StudentName;
	}
	public void setStudentName(String studentName) {
		StudentName = studentName;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getOrganisationName() {
		return OrganisationName;
	}
	public void setOrganisationName(String organisationName) {
		OrganisationName = organisationName;
	}
	public String getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	@Override
	public int hashCode() {
		return Objects.hash(Email, OrganisationName, Password, PhoneNumber, StudentName, studentId);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Student other = (Student) obj;
		return Objects.equals(Email, other.Email) && Objects.equals(OrganisationName, other.OrganisationName)
				&& Objects.equals(Password, other.Password) && Objects.equals(PhoneNumber, other.PhoneNumber)
				&& Objects.equals(StudentName, other.StudentName) && studentId == other.studentId;
	}
	@Override
	public String toString() {
		return "Student [studentId=" + studentId + ", StudentName=" + StudentName + ", Email=" + Email
				+ ", OrganisationName=" + OrganisationName + ", PhoneNumber=" + PhoneNumber + ", Password=" + Password
				+ "]";
	}
	
}
