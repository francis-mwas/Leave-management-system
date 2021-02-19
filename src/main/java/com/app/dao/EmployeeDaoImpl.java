package com.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.models.Employee;
import com.app.models.Leave;
import com.app.utils.MyBatisConfig;

public class EmployeeDaoImpl implements IEmployeeDao {
	
	public void createEmployee(Employee employee) {
		 SqlSession session = MyBatisConfig.getSessionFactory().openSession();
		try {
			session.insert("employeeMapper.createEmployee", employee);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean applyLeave(Leave leave) {
		 SqlSession session = MyBatisConfig.getSessionFactory().openSession();
		boolean response = false;
		try {
			session.insert("employeeMapper.applyLeave", leave);
			session.commit();
			response = true;
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return response;
	}


	/**
	 * Get the employee by personal number return an object employee
	 **/
	public Employee getEmployeeByPersonalNumber(String pNumber) {
		 SqlSession session = MyBatisConfig.getSessionFactory().openSession();
		Employee employee = null;

		try {
			employee = session.selectOne("employeeMapper.getEmployeeById", pNumber);
			session.commit();
			session.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return employee;
	}

	public List<Employee> getAllEmployees() {
		 SqlSession session = MyBatisConfig.getSessionFactory().openSession();
		List<Employee> employees = null;
		try {
			employees = session.selectList("employeeMapper.getAllEmployees");
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return employees;
	}

	public List<Leave> getAllLeaves() {
		SqlSession session = MyBatisConfig.getSessionFactory().openSession();
		List <Leave> leaves = null;
		
		try {	
			leaves = session.selectList("employeeMapper.getLeaves");
			session.commit();
			session.close();	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return leaves;
	}

	public Leave getLeaveById(int leave_id) {
		SqlSession session = MyBatisConfig.getSessionFactory().openSession();
		Leave leave = null;
		
		try {
			leave = session.selectOne("employeeMapper.getLeaveById", leave_id);
			session.commit();
			session.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		

		return leave;
		
	}
	
	 

	public void addComments(Leave leave) {
		SqlSession session = MyBatisConfig.getSessionFactory().openSession();
		try {
			session.update("employeeMapper.addLeaveComments", leave);
			session.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public Employee getEmpLeave(int emp_id) {
		SqlSession session = MyBatisConfig.getSessionFactory().openSession();
		Employee employee = null;
		
		try {
			employee = session.selectOne("employeeMapper.getLeavesFromEmps", emp_id);
			session.commit();
			session.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return employee;
	}

	public void deleteEmployee(int emp_id) {
		
		SqlSession session = MyBatisConfig.getSessionFactory().openSession();
		
		try {
		session.delete("employeeMapper.deleteEmployee", emp_id);
			session.commit();
			session.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
