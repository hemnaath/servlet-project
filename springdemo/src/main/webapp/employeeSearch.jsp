<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="List" method="post">
<label for="empCodeSearch">EMP_CODE</label>
<input type="text" id="empCodeSearch" name="empCodeSearch">
<br><br><br>
<label for="empCitySearch">EMP_CITY</label>
<input type="text" id="empCitySearch" name="empCitySearch">
<br><br><br>
<label for="empStateSearch">EMP_STATE</label>
<input type="text" id="empStateSearch" name="empStateSearch">
<br><br><br>
<label for="empJoiningFromSearch">JOINING_FROM</label>
<input type="text" id="empJoiningFromSearch" name="empJoiningFromSearch">
<label for="empJoiningToSearch">JOINING_TO</label>
<input type="text" id="empJoiningToSearch" name="empJoiningToSearch">
<button>Search</button>
</form>
</body>
</html>