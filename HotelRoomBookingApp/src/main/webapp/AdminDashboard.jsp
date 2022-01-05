<%@page import="com.hotelroombooking.model.Guest"%>
<%@page import="java.util.List"%>
<%@page import="com.hotelroombooking.daoimpl.GuestDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table,td,th,tr{
border:1px solid black;
border-collapse: collapse;
}
</style>
</head>
<body>

<h3>Admin dashboard</h3>

<script type="text/javascript">
function roomShow()
{
	var wedding=document.getElementById("wedding");
	wedding.style.display="none";
	var meeting=document.getElementById("meeting");
	meeting.style.display="none";
	var users=document.getElementById("user");
	users.style.display="none"
	var room=document.getElementById("room");
	room.style.display="block";
	
	}
	function weddingShow()
	{
		var room=document.getElementById("room");
		room.style.display="none";
		var meeting=document.getElementById("meeting");
		meeting.style.display="none";
		var users=document.getElementById("user");
		users.style.display="none"
		var wedding=document.getElementById("wedding");
		wedding.style.display="block";
		
	}
	function meetingShow()
	{
		var room=document.getElementById("room");
		room.style.display="none";
		var wedding=document.getElementById("wedding");
		wedding.style.display="none";
		var users=document.getElementById("user");
		users.style.display="none"
		var meeting=document.getElementById("meeting");
		meeting.style.display="block";
	}
	function userShow()
	{
		var room=document.getElementById("room");
		room.style.display="none";
		var wedding=document.getElementById("wedding");
		wedding.style.display="none";
		var meeting=document.getElementById("meeting");
		meeting.style.display="none";
		var users=document.getElementById("user");
		users.style.display="block"
	}
</script>

<a onclick="roomShow()"><h3>ROOM CRUD</h3></a>
<a onclick="weddingShow()"><h3>WEDDING HALL CRUD</h3></a>
<a onclick="meetingShow()"><h3>MEETING HALL CRUD</h3></a>
<a onclick="userShow()"><h3>LIST ALL USERS</h3></a>

<div style="display: none;" id="room">
<form action="addRoom" method="post">
room number:<input type="text" id="roomNumber"name="roomNumber" required>
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
price:<input type="text" id="price"name="price" required>
<button>Add room</button>
</form>

<form action="deleteRoom" method="post">
room number:<input type="text" id="roomNumber"name="roomNumber" required>
<button>Delete room</button>
</form>

<form action="editRoom" method="post">
room number:<input type="text" id="roomNumber"name="roomNumber" required>
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
price:<input type="text" id="price"name="price" required>
<button>update room</button>
</form>
<br><br><br>
</div>


<div style="display: none;" id="wedding">
<form action="addWeddingHall" method="post">
wedding hall number:<input type="text" id=weddingHallNumber name="weddingHallNumber" required>
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
price:<input type="text" id="price"name="price" required>
<button>Add wedding hall</button>
</form>

<form action="editWeddingHall" method="post">
wedding hall number:<input type="text" id=weddingHallNumber name="weddingHallNumber" required>
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
price:<input type="text" id="price"name="price" required>
<button>update wedding hall</button>
</form>

<form action="deleteWeddingHall" method="post">
wedding hall number:<input type="text" id=weddingHallNumber name="weddingHallNumber" required>
<button>delete wedding hall</button>
</form>
</div>


<div style="display: none;" id="meeting">
<form action="addMeetingHall" method="post">
meeting hall number:<input type="text" id=meetingHallNumber name="meetingHallNumber" required>
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
price:<input type="text" id="price"name="price" required>
<button>Add meeting hall</button>
</form>




<form action="editMeetingHall" method="post">
meeting hall number:<input type="text" id=meetingHallNumber name="meetingHallNumber" required>
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
price:<input type="text" id="price"name="price" required>
<button>update meeting hall</button>
</form>

<form action="deleteMeetingHall" method="post">
meeting hall number:<input type="text" id=meetingHallNumber name="meetingHallNumber" required>
<button>delete meeting hall</button>
</form>
<br><br><br>
</div>




<div style="display: none;" id="user">
<table cellpadding=2px cellspacing=20px>
<tr>
<th>Firstname</th>
<th>Lastname</th>
<th>Email</th>
<th>Password</th>
<th>Mobile Number</th>
</tr>

<%
GuestDaoImpl guestDaoObj = new GuestDaoImpl();
List<Guest> guestList = guestDaoObj.showAllUser();

for(int i=0;i<guestList.size();i++)
{
	Guest guestObj = guestList.get(i);
%>
<tr>
<td><%=guestObj.getFirstName()%></td>
<td><%=guestObj.getLastName()%></td>
<td><%=guestObj.getEmail()%></td>
<td><%=guestObj.getPassword()%></td>
<td><%=guestObj.getMobileNumber()%></td>
</tr>
<%}%>
</table>
</div>
<a href="Index.jsp"><h3>LOGOUT</h3></a>
</body>
</html>