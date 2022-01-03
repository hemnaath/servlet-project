<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="index" method="post">
<input type="text" id="email" name="email" class="login-username" placeholder="Email" ><br>
<input type="password" id="password" name="password" class="login-password" placeholder="Password" ><br>
<input type="submit" value="LOGIN" class="login-signin"><br>
<a href="Register.jsp"><input type="button" value="REGISTER" class="login-register"></a>
<label class="forget-label">Forget Password ?</label>
</form>
</body>
</html>
