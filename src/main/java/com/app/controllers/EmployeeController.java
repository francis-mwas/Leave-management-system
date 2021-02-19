package com.app.controllers;

import java.awt.List;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.util.Calendar;
import java.util.Collection;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.app.dao.IEmployeeDao;
import com.app.models.Employee;
import com.app.models.Leave;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

@Controller
public class EmployeeController {

	@Autowired
	IEmployeeDao dao;
	private Calendar calender = Calendar.getInstance();

	private Date date = new Date(0);

	
	@RequestMapping("/apply")
	public String enterUniqueId(HttpServletRequest req, HttpServletResponse res) {		
		return "apply";
	}

	@RequestMapping("/register")
	public String viewRegisterForm() {
		return "register";
	}

	@RequestMapping("/apply-leave")
	public String applyLeave(HttpServletRequest req, HttpServletResponse res) throws Exception {
		boolean response = false;
		int emp_id = Integer.parseInt(req.getParameter("emp_id"));
		String lastLeaveDay = req.getParameter("lastLeaveDay");
		String daysRequested = req.getParameter("daysRequested");
		String leaveType = req.getParameter("leaveType");
		String startDate = req.getParameter("startDate");
		String endDate = req.getParameter("endDate");

		System.out.println("The employee Id is: " + emp_id);

		response = dao.applyLeave(new Leave(emp_id, lastLeaveDay, daysRequested, leaveType, startDate, endDate));
		if (response) {
			System.out.println("Leave applied successfully");
		} else {
			System.out.println("The leave creation fail");
		}

		return "redirect:/emp-dashboard";
	}

	@RequestMapping("/selectById")
	public ModelAndView selectEmployeeById(HttpServletRequest req, HttpServletResponse res, HttpSession session) throws Exception {
		String pNumber = req.getParameter("pNumber");
		ModelAndView mv = new ModelAndView();		
		Employee employee = dao.getEmployeeByPersonalNumber(pNumber);
	
		
		if(pNumber == "") {
			mv.setViewName("provideFields");
		}else if(employee == null){
			mv.setViewName("userNotFound");
		} else {
			mv.setViewName("application-form");
			mv.addObject("employee", employee);
		}
		
		return mv;
	}
	
	@RequestMapping("/Leaves")
	public ModelAndView VieOneLeave(HttpServletRequest req, HttpServletResponse res) {
		String pNumber = req.getParameter("pNumber");
		ModelAndView mv = new ModelAndView();		
		Employee employee = dao.getEmployeeByPersonalNumber(pNumber);
		
		
		if(pNumber == "") {
			mv.setViewName("provideFields");
		}else if(employee == null){
			mv.setViewName("userNotFound");
		} else {
			mv.setViewName("myLeaves");
			mv.addObject("employee", employee);
		}
		
		System.out.println("The employer and leaves: " + employee.getLeaves());
		
		return mv;
	}

	@RequestMapping("/myProfile")
	public ModelAndView myProfile(HttpServletRequest req, HttpServletResponse res, HttpSession session) throws Exception {
		String pNumber = req.getParameter("pNumber");
		ModelAndView mv = new ModelAndView();		
		Employee employee = dao.getEmployeeByPersonalNumber(pNumber);
	
		
		if(pNumber == "") {
			mv.setViewName("provideFields");
		}else if(employee == null){
			mv.setViewName("userNotFound");
		} else {
			mv.setViewName("emp-dashboard");
			mv.addObject("employee", employee);
		}
		System.out.println("The employee and hopefully leaves: " + employee.getLeaves());
		
		return mv;
	}

	@RequestMapping("/viewMyLeave")
	public String myLeaves() {
		return "viewLeaveId";
	}
	
	@RequestMapping("/enterId")
	public String enterId() {
		return "enterId";
	}

	@RequestMapping("/emp-dashboard")
	public String viewEmpDashboard() {
		return "emp-dashboard";
	}

	@RequestMapping("/application-form")
	public String applyLeav() {
		return "application-form";
	}

	@RequestMapping("/downloadPdf")
	public void downloadpdf(HttpServletRequest req, HttpServletResponse res) throws IOException {
		int emp_id = Integer.parseInt(req.getParameter("emp_id"));
		Employee employee =  dao.getEmpLeave(emp_id);
		
		System.out.println("lkjkjlkkj:" + employee);
		
		List leaves = (List) employee.getLeaves();
	try {
	final InputStream stream = this.getClass().getResourceAsStream("/leave_report.jrxml");

	// Compile the Jasper report from .jrxml to .japser
	final JasperReport report = JasperCompileManager.compileReport(stream);
	
	// Fetching the employees from the data source.
	final JRBeanCollectionDataSource source = new JRBeanCollectionDataSource((Collection<?>) leaves);

	// Adding the additional parameters to the pdf.
	final Map<String, Object> parameters =null;


	// Filling the report with the employee data and additional parameters information.
	final JasperPrint print = JasperFillManager.fillReport(report, parameters, source);

	//final String filePath = "C://Users//user//Documents//" + "Employee_report"+date.getDate()+date.getMonth()+date.getYear()+"_"+date.getHours()+"_"+date.getMinutes()+"_"+date.getSeconds()+".pdf";
	// Export the report to a PDF file.
	Integer month= calender.get(Calendar.MONTH);
	res.setContentType("application/x-download");
	res.addHeader("Content-disposition", "attachment; filename="+"Employee_report"+calender.get(Calendar.DATE)+"-"+String.valueOf(month+1)+"-"+calender.get(Calendar.YEAR)+".pdf");
	ServletOutputStream out = res.getOutputStream();
	JasperExportManager.exportReportToPdfStream(print, out);
	out.flush();
	out.close();
	} catch (JRException e) {
	e.printStackTrace();
	}

	

	}
	}
