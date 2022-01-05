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
Card Number:<input type="text" id="cardNumber" name="cardNumber" pattern="[0-9]{16}" title="invalid card number"required>
Expiry Date:<input type="text" id="expiryDate" name="expiryDate" required>
CVV:<input type="text" id="cvv" name="cvv" required>
<button>Pay Now</button>
</form>
</body>
</html>