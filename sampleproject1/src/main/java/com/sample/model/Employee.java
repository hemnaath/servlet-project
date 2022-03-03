package com.sample.model;

import java.util.Objects;

public class Employee {

	private String empName;
	private String empCode;
	private String empEmail;
	private String empAddress;
	private String empCity;
	private String empState;
	private String empDob;
	private String empJoiningDate;

	public Employee(String empName, String empCode, String empEmail, String empAddress, String empCity, String empState,
			String empDob, String empJoiningDate) {
		super();
		this.empName = empName;
		this.empCode = empCode;
		this.empEmail = empEmail;
		this.empAddress = empAddress;
		this.empCity = empCity;
		this.empState = empState;
		this.empDob = empDob;
		this.empJoiningDate = empJoiningDate;
	}

	public Employee(String empName, String empCode, String empEmail, String empCity, String empState) {
		super();
		this.empName = empName;
		this.empCode = empCode;
		this.empEmail = empEmail;
		this.empCity = empCity;
		this.empState = empState;
	}

	public Employee(String empCode, String empCity, String empState) {
		super();
		this.empCode = empCode;
		this.empCity = empCity;
		this.empState = empState;
	}

	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Employee [empName=" + empName + ", empCode=" + empCode + ", empEmail=" + empEmail + ", empAddress="
				+ empAddress + ", empCity=" + empCity + ", empState=" + empState + ", empDob=" + empDob
				+ ", empJoiningDate=" + empJoiningDate + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(empAddress, empCity, empCode, empDob, empEmail, empJoiningDate, empName, empState);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Employee other = (Employee) obj;
		return Objects.equals(empAddress, other.empAddress) && Objects.equals(empCity, other.empCity)
				&& Objects.equals(empCode, other.empCode) && Objects.equals(empDob, other.empDob)
				&& Objects.equals(empEmail, other.empEmail) && Objects.equals(empJoiningDate, other.empJoiningDate)
				&& Objects.equals(empName, other.empName) && Objects.equals(empState, other.empState);
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getEmpCode() {
		return empCode;
	}

	public void setEmpCode(String empCode) {
		this.empCode = empCode;
	}

	public String getEmpEmail() {
		return empEmail;
	}

	public void setEmpEmail(String empEmail) {
		this.empEmail = empEmail;
	}

	public String getEmpAddress() {
		return empAddress;
	}

	public void setEmpAddress(String empAddress) {
		this.empAddress = empAddress;
	}

	public String getEmpCity() {
		return empCity;
	}

	public void setEmpCity(String empCity) {
		this.empCity = empCity;
	}

	public String getEmpState() {
		return empState;
	}

	public void setEmpState(String empState) {
		this.empState = empState;
	}

	public String getEmpDob() {
		return empDob;
	}

	public void setEmpDob(String empDob) {
		this.empDob = empDob;
	}

	public String getEmpJoiningDate() {
		return empJoiningDate;
	}

	public void setEmpJoiningDate(String empJoiningDate) {
		this.empJoiningDate = empJoiningDate;
	}

}
