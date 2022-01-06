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
</head>
<body>

<div style="display:block;margin:auto;">
<div class="container">
<form action="forgetpassword" method="post">
<div class="col-xs-3">
<label for="email">Email</label>
<input type="text" id="email" name="email" class="form-control" placeholder="Enter Email" required>
</div>
<br><br><br><br>
<div class="col-xs-3">
<label for="password">Password</label>
<input type="password" id="password" name="password" class="form-control" placeholder="Enter Password" required>
</div>
<br><br><br><br>
 <input type="submit" value="CHANGE PASSWORD" class="btn btn-success">
</form>
</div>
</div>


</body>
</html>