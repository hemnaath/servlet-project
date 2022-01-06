<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <style>
	 .registerForm {
	    box-shadow: 0px 0px 14px 0px #d9d9d9;
	    padding: 10px;
	        margin: 20% auto;
	}
	.formBtn {
	    text-align: center;
	}
	.formBtn input {
	    margin: 10px;
	}
	.registerForm input {
    width: 100%;
}
.registerForm .form-group label {
    width: 100%;
}
.formBtn input {
    display: block;
    margin: 0px;
}
  </style>
</head>
<body>
<div class="container">
	<div class="row">
	<div class="col-sm-4"></div>
	<div class="col-sm-4">
		<div class="registerForm">
			<form action="register" method="post">
				<div class="form-group">
				<label>Firstname :</label>
				<input type="text" id="firstName" name="firstName"class="register-firstname" pattern="[A-Za-z]+" title="Invalid Name"required>
				</div>
				<div class="form-group">
				<label>Lastname :</label>
				<input type="text" id="lastName" name="lastName"class="register-lastname" placeholder="Lastname"pattern="[A-Za-z]+" title="Invalid Name"required><br>
				</div>
				<div class="form-group">
				<label>Email :</label>
				<input type="text" id="email" name="email"class="register-email" placeholder="Email" pattern="[a-zA-Z0-9]+[@][a-z]+[.][a-z]+" title="Invalid Email"required><br>
				</div>
				<div class="form-group">
				<label>Password :</label>
				<input type="password" id="password" name="password"class="register-password" placeholder="Password" pattern="[A-Z]+[a-z]+[0-9]+" title="password must contain
				atleast one UPPER CASE, LOWER CASE, NUMBER" required>
				</div>
				<div class="form-group">
				<label>Confirm Password :</label>
				<input type="password" id="confirmPassword" name="confirmPassword"class="register-confirmpassword" placeholder="Confirm Password" pattern="[A-Z]+[a-z]+[0-9]+" title="password must contain
				atleast one UPPER CASE, LOWER CASE, NUMBER"><br>
				</div>
				<div class="form-group">
				<label>Phone Number :</label>
				<input type="text" id="phoneNumber" name="phoneNumber"class="register-phonenumber" placeholder="Phone Number" pattern="[0-9]{10}" title="Invalid phone number" required><br>
				</div>
				<div class="formBtn">
					<input type="submit" value="REGISTER" class="register-register">
				</div>
			</form>
		</div>
	</div>
	<div class="col-sm-4"></div>
	</div>
</div>
</body>
</html>