package com.app.models;

import java.util.ArrayList;
import java.util.List;

public class Employee extends User {
	private int emp_id;
	private String email;
	private String personNumber;
	private String jobGrade;
	private String station;
	private String department;
	private String dateOfJoining;
	private List<Leave> leaves =  new ArrayList<Leave>();;
	
	public Employee() {};
	
	public Employee(int emp_id,String firstName, String lastName,  String title, String email, String personNumber,
			String jobGrade, String station, String department, String dateOfJoining){
		
		super(firstName, lastName, title);
		
		this.emp_id = emp_id;
		this.email = email;
		this.personNumber = personNumber;
		this.jobGrade = jobGrade;
		this.station = station;
		this.department = department;
		this.dateOfJoining = dateOfJoining;
		
		
	}
	

	public int getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}

	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
	public String getPersonNumber() {
		return personNumber;
	}


	public void setPersonNumber(String personNumber) {
		this.personNumber = personNumber;
	}


	public String getJobGrade() {
		return jobGrade;
	}

	public void setJobGrade(String jobGrade) {
		this.jobGrade = jobGrade;
	}

	public String getStation() {
		return station;
	}

	public void setStation(String station) {
		this.station = station;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getDateOfJoining() {
		return dateOfJoining;
	}

	public void setDateOfJoining(String dateOfJoining) {
		this.dateOfJoining = dateOfJoining;
	}

	public List<Leave> getLeaves() {
		return leaves;
	}

	public void setLeaves(List<Leave> leaves) {
		this.leaves = leaves;
	}

	
		

}
