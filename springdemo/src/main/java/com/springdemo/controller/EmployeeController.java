package com.springdemo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springdemo.dao.EmployeeDao;
import com.springdemo.model.Employee;

@Controller
public class EmployeeController {
	@RequestMapping("/List")
	public void getMethod(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		EmployeeDao employeeDaoObj = new EmployeeDao();

		String empCode = request.getParameter("empCodeSearch");
		String empCity = request.getParameter("empCitySearch");
		String empState = request.getParameter("empStateSearch");

		Employee empObj = new Employee(empCode, empCity, empState);
		List<Employee> employeeList = employeeDaoObj.searchEmpDetails(empObj);
		request.setAttribute("employeeDetails", employeeList);
		RequestDispatcher rd = request.getRequestDispatcher("employeeList.jsp");
		rd.forward(request, response);
	}
}
