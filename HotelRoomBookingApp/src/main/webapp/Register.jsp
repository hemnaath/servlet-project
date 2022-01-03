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
<input type="text" id="firstName" name="firstName"class="register-firstname" placeholder="Firstname">
<input type="text" id="lastName" name="lastName"class="register-lastname" placeholder="Lastname"><br>
<input type="text" id="email" name="email"class="register-email" placeholder="Email"><br>
<input type="password" id="password" name="password"class="register-password" placeholder="Password">
<input type="password" id="confirmPassword" name="confirmPassword"class="register-confirmpassword" placeholder="Confirm Password"><br>
<input type="text" id="phoneNumber" name="phoneNumber"class="register-phonenumber" placeholder="Phone Number" ><br>
<input type="submit" value="REGISTER" class="register-register">
</form>
</body>
</html>