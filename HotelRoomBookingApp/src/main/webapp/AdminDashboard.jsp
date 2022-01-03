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

<form action="addWeddingHall" method="post">
room number:<input type="text" id="weddingHallNumber"name="weddingHallNumber">
category:<input type="text" id="category"name="category">
location:<input type="text" id="location"name="location">
price:<input type="text" id="price"name="price">
<button>Add room</button>
</form>

<form action="deleteWeddingHall" method="post">
room number:<input type="text" id="weddingHallNumber"name="weddingHallNumber">
<button>Delete room</button>
</form>

<form action="editWeddingHall" method="post">
room number:<input type="text" id="weddingHallNumber"name="weddingHallNumber">
category:<input type="text" id="category"name="category">
location:<input type="text" id="location"name="location">
price:<input type="text" id="price"name="price">
<button>update room</button>
</form>
</body>
</html>