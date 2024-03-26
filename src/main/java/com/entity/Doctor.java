package com.entity;

public class Doctor {

	private int id;
	private String fullName; 
	private String fees;
	private String dob;
	private String qualification; 
	private String specialist;
	private String gender; 
	private String email;
	private String mob; 
	private String password;
	
	
	public Doctor() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Doctor(String fullName, String fees, String dob, String qualification, String specialist, String gender, String email,
			String mob, String password) {
		super();
		this.fullName = fullName;
		this.fees = fees;
		this.dob = dob;
		this.qualification = qualification;
		this.specialist = specialist;
		this.gender = gender;
		this.email = email;
		this.mob = mob;
		this.password = password;
	}
	
	
	public Doctor(int id, String fullName, String fees, String dob, String qualification, String specialist, String gender,
			String email, String mob, String password) {
		super();
		this.id = id;
		this.fullName = fullName;
		this.fees = fees;
		this.dob = dob;
		this.qualification = qualification;
		this.specialist = specialist;
		this.gender = gender;
		this.email = email;
		this.mob = mob;
		this.password = password;
	}


	public String getFees() {
		return fees;
	}


	public void setFees(String fees) {
		this.fees = fees;
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
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getSpecialist() {
		return specialist;
	}
	public void setSpecialist(String specialist) {
		this.specialist = specialist;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMob() {
		return mob;
	}
	public void setMob(String mob) {
		this.mob = mob;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
