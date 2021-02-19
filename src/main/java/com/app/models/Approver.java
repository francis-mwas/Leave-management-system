package com.app.models;

public class Approver extends User {

	private String userName;
	private String password;
	
	public Approver(String firstName, String lastName, String title, String userName, String password) {
		super(firstName, lastName, title);
		this.userName = userName;
		this.password = password;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}
