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
	 .loginForm {
	    box-shadow: 0px 0px 14px 0px #d9d9d9;
	    padding: 10px;
	        margin: 50% auto;
	}
	.formBtn {
	    text-align: center;
	}
	.formBtn input {
	    margin: 10px;
	}
	.loginForm input {
	    margin-bottom: 11px;
	}
  </style>
</head>
<body>

<div style="display:block;margin:auto;">
	<div class="container">
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
			<div class="loginForm card">
				<form action="index" method="post">
					<h3 class="text-center">Login</h3>
					<div class="col-sm-12">
						<label for="email">Email</label>
						<input type="text" id="email" name="email" class="form-control" placeholder="Enter Email" pattern="[a-zA-Z0-9]+[@][a-z]+[.][a-z]+" title="Invalid Email"required>
					</div>
					<div class="col-sm-12">
						<label for="password">Password</label>
						<input type="password" id="password" name="password" class="form-control" placeholder="Enter Password" pattern="[A-Z]+[a-z]+[0-9]+" title="password must contain
				atleast one UPPER CASE, LOWER CASE, NUMBER"required>
					</div>
				 	<div class="formBtn">
				 		<input type="submit" value="LOGIN" class="btn btn-success">
						<a href="Register.jsp"><input type="button" class="btn btn-success" value="REGISTER"></a>
						<a href="ForgetPassword.jsp"><label>Forget Password</label></a>
				 	</div>
				</form>
			</div>
			</div>
			<div class="col-sm-4"></div>
		</div>
	</div>
</div>


</body>
</html>