<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="register" method="post">
Firstname :<input type="text" id="firstName" name="firstName"class="register-firstname" pattern="[A-Za-z]+" required>
Lastname :<input type="text" id="lastName" name="lastName"class="register-lastname" placeholder="Lastname"pattern="[A-Za-z]+" required><br>
Email :<input type="text" id="email" name="email"class="register-email" placeholder="Email" pattern="[a-zA-Z0-9]+[@][a-z]+[.][a-z]+" required><br>
Password :<input type="password" id="password" name="password"class="register-password" placeholder="Password" pattern="[A-Z]+[a-z]+[0-9]+" required>
Confirm Password :<input type="password" id="confirmPassword" name="confirmPassword"class="register-confirmpassword" placeholder="Confirm Password" ><br>
Phone Number :<input type="text" id="phoneNumber" name="phoneNumber"class="register-phonenumber" placeholder="Phone Number" pattern="[0-9]{10}" required><br>
<input type="submit" value="REGISTER" class="register-register">
</form>
</body>
</html>