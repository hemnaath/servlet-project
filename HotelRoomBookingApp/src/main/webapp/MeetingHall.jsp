
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form  action="bookMeetingHall"method="post">
Check-In :<input type="date" id="checkIn" name="checkIn" >
Check-Out :<input type="date" id="checkOut" name="checkOut" >
Category :<input type="text" id="cat" list="category" name="category" required>
<datalist id="category" name="category">
<option value="premium">premium</option>
<option value="luxury">luxury</option>
<option value="standard">standard</option>
<option value="budget">budget</option>
</datalist>
Location :<input type="text" id="loc" list="location" name="location" required>
<datalist id="location" name="location">
<option value="chennai">Chennai</option>
<option value="coimbatore">Coimbatore</option>
<option value="madurai">Madurai</option>
<option value="sivakasi">Sivakasi</option>
</datalist>
<input type="submit" value="Book Meeting hall">
</form>

<form action="updateMeetingHall" method="post">
Meeting Hall Nummber :<input type="text" id=meetingHallNumber name="meetingHallNumber" >
Check-In :<input type="date" id="checkIn" name="checkIn" >
Check-Out :<input type="date" id="checkOut" name="checkOut" >
Category :<input type="text" id="cat" list="category" name="category" required>
<datalist id="category" name="category">
<option value="premium">premium</option>
<option value="luxury">luxury</option>
<option value="standard">standard</option>
<option value="budget">budget</option>
</datalist>
Location :<input type="text" id="loc" list="location" name="location" required>
<datalist id="location" name="location">
<option value="chennai">Chennai</option>
<option value="coimbatore">Coimbatore</option>
<option value="madurai">Madurai</option>
<option value="sivakasi">Sivakasi</option>
</datalist>
<button>Update Meeting Hall</button>
</form>

<form action="cancelMeetingHall" method="post">
Meeting Hall Number :<input type="text" id=meetingHallNumber name="meetingHallNumber" >
<button>cancel Meeting Hall</button>
</form>
</body>
</html>