<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Admin dashboard</h3>
<h3>ROOM CRUD</h3>
<form action="addRoom" method="post">
room number:<input type="text" id="roomNumber"name="roomNumber">
category:<input type="text" id="category"name="category">
location:<input type="text" id="location"name="location">
price:<input type="text" id="price"name="price">
<button>Add room</button>
</form>

<form action="deleteRoom" method="post">
room number:<input type="text" id="roomNumber"name="roomNumber">
<button>Delete room</button>
</form>

<form action="editRoom" method="post">
room number:<input type="text" id="roomNumber"name="roomNumber">
category:<input type="text" id="category"name="category">
location:<input type="text" id="location"name="location">
price:<input type="text" id="price"name="price">
<button>update room</button>
</form>
<br><br><br>


<h3>WEDDING HALL CRUD</h3>
<form action="addWeddingHall" method="post">
wedding hall number:<input type="text" id=weddingHallNumber name="weddingHallNumber">
category:<input type="text" id="category"name="category">
location:<input type="text" id="location"name="location">
price:<input type="text" id="price"name="price">
<button>Add wedding hall</button>
</form>

<form action="editWeddingHall" method="post">
wedding hall number:<input type="text" id=weddingHallNumber name="weddingHallNumber">
category:<input type="text" id="category"name="category">
location:<input type="text" id="location"name="location">
price:<input type="text" id="price"name="price">
<button>update wedding hall</button>
</form>

<form action="deleteWeddingHall" method="post">
wedding hall number:<input type="text" id=weddingHallNumber name="weddingHallNumber">
<button>delete wedding hall</button>
</form>


<h3>MEETING HALL CRUD</h3>
<form action="addMeetingHall" method="post">
meeting hall number:<input type="text" id=meetingHallNumber name="meetingHallNumber">
category:<input type="text" id="category"name="category">
location:<input type="text" id="location"name="location">
price:<input type="text" id="price"name="price">
<button>Add meeting hall</button>
</form>
</body>
</html>