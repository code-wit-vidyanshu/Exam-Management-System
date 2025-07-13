package com.onlineexam.model;

import java.util.Objects;

public class Admin {
	
	private String Email;
	private String Password;
	
	
	public Admin() {
		super();
		
	}
	
	public Admin(String email, String password) {
		super();
		Email = email;
		Password = password;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	
	@Override
	public String toString() {
		return "Admin [Email=" + Email + ", Password=" + Password + "]";
	}
	@Override
	public int hashCode() {
		return Objects.hash(Email, Password);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Admin other = (Admin) obj;
		return Objects.equals(Email, other.Email) && Objects.equals(Password, other.Password);
	}
}
