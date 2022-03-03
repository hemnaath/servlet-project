package com.sample.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sample.model.Employee;
import com.sample.util.ConnectionUtil;

public class EmployeeDao {

	public List<Employee> searchEmpDetails(Employee empObj) {
		Connection conn = ConnectionUtil.getDbConnection();
		List<Employee> empDetailsList = new ArrayList<>();
		PreparedStatement pstmt = null;
		StringBuilder searchEmpDetailsQuery = new StringBuilder();
		try {
			searchEmpDetailsQuery
					.append("select emp_code,emp_name,emp_email,emp_city,emp_state from emp_details where");

			if (!empObj.getEmpCode().equals("")) {
				searchEmpDetailsQuery.append(" emp_code= " + "'" + empObj.getEmpCode() + "'");
			} else if (empObj.getEmpCity() != null) {
				if (!empObj.getEmpCode().equals("")) {
					searchEmpDetailsQuery.append(" emp_city= " + "'" + empObj.getEmpCity() + "'" + "and" + " emp_code= "
							+ "'" + empObj.getEmpCode() + "'");
				} else {
					searchEmpDetailsQuery.append(" emp_city= " + "'" + empObj.getEmpCity() + "'");
				}

			} else if (empObj.getEmpState() != null) {
				if (!empObj.getEmpCode().equals("") && empObj.getEmpCity() != null) {
					searchEmpDetailsQuery.append(" emp_city= " + "'" + empObj.getEmpCity() + "'" + "and" + " emp_code= "
							+ "'" + empObj.getEmpCode() + "'" + "and" + " emp_state= " + "'" + empObj.getEmpState()
							+ "'");
				}
				searchEmpDetailsQuery.append(" emp_state= " + "'" + empObj.getEmpState() + "'");
			}

			System.out.println(searchEmpDetailsQuery.toString());
			pstmt = conn.prepareStatement(searchEmpDetailsQuery.toString());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
//				System.out.println(rs.getString(1));
				Employee EmployeeObj = new Employee(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5));
				empDetailsList.add(EmployeeObj);
			}
//			System.out.println(empDetailsList);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return empDetailsList;
	}
}
