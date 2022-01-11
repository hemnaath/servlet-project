<%@page import="com.hotelroombooking.daoimpl.WeddingHallTransactionDaoImpl"%>
<%@page import="com.hotelroombooking.model.WeddingHallTransaction"%>
<%@page import="com.hotelroombooking.daoimpl.RoomTransactionDaoImpl"%>
<%@page import="com.hotelroombooking.model.Guest"%>
<%@page import="com.hotelroombooking.model.RoomTransaction"%>
<%@page import="com.hotelroombooking.model.MeetingHallDetails"%>
<%@page import="com.hotelroombooking.model.WeddingHallDetails"%>
<%@page import="com.hotelroombooking.model.RoomDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
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
	<h3 class="text-center">PAYMENT PORTAL</h3>
		<form action="payment" method="post">
			<div class="form-group">
				<label>Card Number:</label>
				<input type="text" id="cardNumber" name="cardNumber" placeholder="Card Number" pattern="[0-9]{16}" title="invalid card number"required>
			</div>
			<div class="form-group">
				<label>Expiry Date:</label>
				<input type="text" id="expiryDate" name="expiryDate" placeholder="mm-yyyy" pattern="[0-9]{2}[/][0-9]{2}" title="invalid expiry date"required>
			</div>
			<div class="form-group">
				<label>CVV:</label>
				<input type="text" id="cvv" name="cvv" placeholder="CVV" pattern="[0-9]{3}" title="invalid cvv"required>
			</div>
			<div class="formBtn">
				<button class="btn btn-primary">Pay Now</button>
			</div>
		</form>
	</div>
</div>
</div>
</div>
<%



WeddingHallTransaction weddingHallTransObj1=(WeddingHallTransaction)session.getAttribute("updateWeddingHallDetails");
WeddingHallTransactionDaoImpl weddingHallTransObj = new WeddingHallTransactionDaoImpl();
int price = weddingHallTransObj.findUpdateWeddingPrice(session);






%>
<%=weddingHallTransObj1.getroomNumber() %>
<%=weddingHallTransObj1.getCheckIn() %>
<%=weddingHallTransObj1.getCheckOut() %>
<%=weddingHallTransObj1.getCategory()%>
<%=weddingHallTransObj1.getLocation() %>
<%=price %>







</body>
</html>