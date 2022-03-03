<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table style="width:100%">
		<thead>
			<tr>
				<th>emp_name</th>
				<th>emp_code</th>
				<th>emp_email</th>
				<th>emp_city</th>
				<th>emp_state</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${employeeDetails }" var="emp">
				<tr>
					<td><c:out value="${emp.empCode }"></c:out></td>
					<td><c:out value="${emp.empName }"></c:out></td>
					<td><c:out value="${emp.empEmail }"></c:out></td>
					<td><c:out value="${emp.empCity }"></c:out></td>
					<td><c:out value="${emp.empState }"></c:out></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>