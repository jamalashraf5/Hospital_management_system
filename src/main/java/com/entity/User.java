package com.entity;

public class User {
	private int id;
	private String fullName;
	private String email;
	private String dob;
	private String gender;
	private String password;
	
	
	
	public User(String fullName, String email, String dob, String gender, String password) {
		super();
		this.fullName = fullName;
		this.email = email;
		this.dob = dob;
		this.gender = gender;
		this.password = password;
	}
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDOB() {
		return dob;
	}
	public void setDOB(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	

}
