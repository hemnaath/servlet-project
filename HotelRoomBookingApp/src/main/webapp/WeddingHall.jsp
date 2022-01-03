<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="bookWeddingHall" method="post">
<input type="date" id="checkIn" name="checkIn">
<input type="date" id="checkOut" name="checkOut">
<input type="text" id="cat" list="category" name="category" required>
<datalist id="category" name="category">
<option value="premium">premium</option>
<option value="luxury">luxury</option>
<option value="standard">standard</option>
<option value="budget">budget</option>
</datalist>
<input type="text" id="loc" list="location" name="location" required>
<datalist id="location" name="location">
<option value="chennai">Chennai</option>
<option value="coimbatore">Coimbatore</option>
<option value="madurai">Madurai</option>
<option value="sivakasi">Sivakasi</option>
</datalist>
<input type="submit" value="Book Wedding hall">
</form>

<form action="updateWeddingHall" method="post">
<input type="text" id=weddingHallNumber name="weddingHallNumber">
<input type="date" id="checkIn" name="checkIn">
<input type="date" id="checkOut" name="checkOut">
<input type="text" id="cat" list="category" name="category" required>
<datalist id="category" name="category">
<option value="premium">premium</option>
<option value="luxury">luxury</option>
<option value="standard">standard</option>
<option value="budget">budget</option>
</datalist>
<input type="text" id="loc" list="location" name="location" required>
<datalist id="location" name="location">
<option value="chennai">Chennai</option>
<option value="coimbatore">Coimbatore</option>
<option value="madurai">Madurai</option>
<option value="sivakasi">Sivakasi</option>
</datalist>
<button>Update Wedding Hall</button>
</form>

<form action="cancelWeddingHall" method="post">
<input type="text" id=weddingHallNumber name="weddingHallNumber">
<button>cancel Wedding Hall</button>
</form>
</body>
</html>