package com.app.dao;

import java.util.List;

import com.app.models.Employee;
import com.app.models.Leave;

public interface IEmployeeDao {
	public void createEmployee(Employee employee);
	public boolean applyLeave(Leave leave);
	public Employee getEmployeeByPersonalNumber(String emp_id);
	public List<Employee> getAllEmployees();
	public List<Leave> getAllLeaves();
	public Leave getLeaveById(int leave_id);
	public void addComments(Leave leave);
	public Employee getEmpLeave(int emp_id);
	public void deleteEmployee(int emp_id);
	
}
