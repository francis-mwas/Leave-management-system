package com.app.models;

public class Leave {
	
	private int emp_id;;
	private String last_day_leave_taken;
	private String days_requested;
	private String leave_type;
	private String leave_start_date;
	private String leave_end_date;
	private String annual_leave_days;
	private int leave_id;
	private String leave_status;
	private String leave_comments;
	private int l_bal; //leave balance
	private Employee employee;
	
	public Leave() {};
	
	public Leave(int leave_id,String status, String leave_comments, int l_bal) {
		this.leave_id = leave_id;
		this.leave_status = status;
		this.leave_comments = leave_comments;
		this.l_bal= l_bal;
	}
	public Leave( String leave_comments) {
		this.leave_comments = leave_comments;
	}
	
	public Leave( int emp_id, String last_day_leave_taken, String days_requested, String leave_type,
			String leave_start_date, String leave_end_date) {
		
		this.emp_id = emp_id;
		this.last_day_leave_taken = last_day_leave_taken;
		this.days_requested = days_requested;
		this.leave_type = leave_type;
		this.leave_start_date = leave_start_date;
		this.leave_end_date = leave_end_date;
	}

	
	
	

	public int getLeave_id() {
		return leave_id;
	}

	public void setLeave_id(int leave_id) {
		this.leave_id = leave_id;
	}

	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public String getLast_day_leave_taken() {
		return last_day_leave_taken;
	}

	public void setLast_day_leave_taken(String last_day_leave_taken) {
		this.last_day_leave_taken = last_day_leave_taken;
	}

	public String getDays_requested() {
		return days_requested;
	}

	public void setDays_requested(String days_requested) {
		this.days_requested = days_requested;
	}

	public String getLeave_type() {
		return leave_type;
	}

	public void setLeave_type(String leave_type) {
		this.leave_type = leave_type;
	}

	public String getLeave_start_date() {
		return leave_start_date;
	}

	public void setLeave_start_date(String leave_start_date) {
		this.leave_start_date = leave_start_date;
	}

	public String getLeave_end_date() {
		return leave_end_date;
	}

	public void setLeave_end_date(String leave_end_date) {
		this.leave_end_date = leave_end_date;
	}
	
	public String getAnnual_leave_days() {
		return annual_leave_days;
	}

	public void setAnnual_leave_days(String annual_leave_days) {
		this.annual_leave_days = annual_leave_days;
	}

	public String getLeave_status() {
		return leave_status;
	}

	public void setLeave_status(String leave_status) {
		this.leave_status = leave_status;
	}

	public String getLeave_comments() {
		return leave_comments;
	}

	public void setLeave_comments(String leave_comments) {
		this.leave_comments = leave_comments;
	}
	

	public int getL_bal() {
		return l_bal;
	}

	public void setL_bal(int l_bal) {
		this.l_bal = l_bal;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	

}
