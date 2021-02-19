package com.app.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.app.dao.IEmployeeDao;
import com.app.models.Employee;
import com.app.models.Leave;

@Controller
public class ApproverController {
	
	
	static String 	USERNAME="patrick";
	static String PASSWORD="Patrick123";
	

	@Autowired
	private IEmployeeDao dao;

	
	@RequestMapping("/admin-dashboard")
	public String viewLogin() {
		return "admin-login";
	}
	
	
	@RequestMapping("/admin-login")
	public ModelAndView adminLogin(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView mv = new ModelAndView();
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		if (username == "" && password == ""){
			mv.setViewName("emptyFields");
			return mv;
		}else if(username.equals(USERNAME) && password.equals(PASSWORD)) {
			mv.setViewName("admin-dashboard");
			return new ModelAndView("redirect:/getAll");
		}
		
		else {
			mv.setViewName("invalid-admin");
			return mv;
		}
		
	}

	@RequestMapping("/createAccount")
	public ModelAndView createAccount(HttpServletRequest req, HttpServletResponse res) throws Exception {
		int emp_id = 0;
		String firstName = req.getParameter("firstname");
		String lastName = req.getParameter("lastname");
		String title = req.getParameter("title");
		String email = req.getParameter("email");
		String personalNumber = req.getParameter("personalNumber");
		String jobGrade = req.getParameter("jobGrade");
		String station = req.getParameter("station");
		String department = req.getParameter("department");
		String dateOfJoining = req.getParameter("dateOfJoining");

		dao.createEmployee(new Employee(emp_id, firstName, lastName, title, email, personalNumber, jobGrade, station,
				department, dateOfJoining));

		return new ModelAndView("redirect:/getAll");

	}

	@RequestMapping("/viewLeaves")
	public ModelAndView viewLeaves(HttpServletRequest req, HttpServletResponse res) throws Exception {
		List<Leave> leaves = dao.getAllLeaves();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("leaves");
		mv.addObject("leaves", leaves);
		return mv;
	}

	@RequestMapping("/viewLeave")
	public ModelAndView VieOneLeave(HttpServletRequest req, HttpServletResponse res) {
		int leave_id = Integer.parseInt(req.getParameter("leave_id"));
		Leave leave = dao.getLeaveById(leave_id);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewLeave");
		mv.addObject("leave", leave);
		return mv;
	}

	@RequestMapping("/approveLeave")
	public String approveLeave(HttpServletRequest req, HttpServletResponse res) {

		Leave leave = null;
		int l_bal = 0;

		int leave_id = Integer.parseInt(req.getParameter("leave_id"));
		String comments = req.getParameter("leave_comments");
		String leaveStatus = req.getParameter("leave_status");
		int leaveDaysRequested = Integer.parseInt(req.getParameter("leaveDaysRequested"));
		int annual_leave_days = Integer.parseInt(req.getParameter("annual_leave_days"));
		String leaveType = req.getParameter("leaveType");

		if (leaveType.equals("Annual Leave") && leaveStatus.equals("ACCEPTED")) {
			l_bal = annual_leave_days - leaveDaysRequested;
			System.out.println("The leave type is: " + leaveType + "And balance is: " + l_bal);
		}

		leave = new Leave(leave_id, leaveStatus, comments, l_bal);
		dao.addComments(leave);

		System.out.println("The leave balance: " + l_bal);

		return "redirect:/viewLeaves";
	}

	@RequestMapping("/getAll")
	public ModelAndView getAllEmployess(HttpServletRequest req, HttpServletResponse res) throws Exception {
		List<Employee> employees = dao.getAllEmployees();
		List<Leave> leaves = null;
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin-dashboard");
		mv.addObject("employees", employees);
		mv.addObject("leaves", leaves);

		for (Employee employee : employees) {
			leaves = employee.getLeaves();
			System.out.println("Leaves :" + leaves);

		}

		return mv;
	}
	
	@RequestMapping("/deleteEmployee")
	public ModelAndView deleteEmployee(HttpServletRequest req, HttpServletResponse res) throws Exception {
		int emp_id = Integer.parseInt(req.getParameter("emp_id"));
		System.out.println(emp_id);
		dao.deleteEmployee(emp_id);
		return new ModelAndView("redirect:/getAll");

	}

}
