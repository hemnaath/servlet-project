<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>PAYMENT PORTAL</h3>
<form action="payment" method="post">
Card Number:<input type="text" id="cardNumber" name="cardNumber">
Expiry Date:<input type="text" id="expiryDate" name="expiryDate">
CVV:<input type="text" id="cvv" name="cvv">
<button>Pay Now</button>
</form>
</body>
</html>