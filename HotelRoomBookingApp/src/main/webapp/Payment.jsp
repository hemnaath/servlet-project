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
  <script type="text/javascript">
var today = new Date();
var mm = today.getMonth()+1; 
var yyyy = today.getFullYear();

if(mm<10){
  mm='0'+mm
} 

today = mm+'-'+yyyy;
document.getElementById("datefield").setAttribute("min", today);
</script>
</head>
<body>
<div class="container">
	<div class="row">
	<div class="col-sm-4"></div>
	<div class="col-sm-4">
	<div class="registerForm">
	<h3 class="text-center">PAYMENT PORTAL</h3>
		<form action="payment" method="post">
			<div class="form-group">
				<label>Card Number:</label>
				<input type="text" id="cardNumber" name="cardNumber" pattern="[0-9]{16}" title="invalid card number"required>
			</div>
			<div class="form-group">
				<label>Expiry Date:</label>
				<input type="month" id="expiryDate" name="datefield" title="invalid date"required>
			</div>
			<div class="form-group">
				<label>CVV:</label>
				<input type="text" id="cvv" name="cvv" pattern="[0-9]{3}" title="invalid cvv"required>
			</div>
			<div class="formBtn">
				<button>Pay Now</button>
			</div>
		</form>
	</div>
</div>
</div>
</div>
</body>
</html>