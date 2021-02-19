package com.app.models;

public class User {
	private String firstName;
	private String lastName;
	private String title;
	
	public User() {};
	
	public User(String fName, String lName, String title) {
		this.firstName = fName;
		this.lastName = lName;
		this.title = title;
	}
	
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	
	
	
}
