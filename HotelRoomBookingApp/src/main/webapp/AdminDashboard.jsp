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
<script type="text/javascript">
function roomshow()
{
	var wedding=document.getElementById("wedding");
	wedding.style.display="none";
	var meeting=document.getElementById("meeting");
	meeting.style.display="none";
	var room=document.getElementById("room");
	room.style.display="block";
	
	}
	function weddingshow()
	{
		var room=document.getElementById("room");
		room.style.display="none";
		var meeting=document.getElementById("meeting");
		meeting.style.display="none";
		var wedding=document.getElementById("wedding");
		wedding.style.display="block";
		
	}
	function meetingshow()
	{
		var room=document.getElementById("room");
		room.style.display="none";
		var wedding=document.getElementById("wedding");
		wedding.style.display="none";
		var meeting=document.getElementById("meeting");
		meeting.style.display="block";
	}
</script>
<a onclick="roomshow()"><h3>ROOM CRUD</h3></a>
<a onclick="weddingshow()"><h3>WEDDING HALL CRUD</h3></a>
<a onclick="meetingshow()"><h3>MEETING HALL CRUD</h3></a>

<div style="display: none;" id="room">
<h3>ROOM CRUD</h3>
<form action="addRoom" method="post">
room number:<input type="text" id="roomNumber"name="roomNumber" >
category:<input type="text" id="category"name="category" >
location:<input type="text" id="location"name="location" >
price:<input type="text" id="price"name="price" >
<button>Add room</button>
</form>

<form action="deleteRoom" method="post">
room number:<input type="text" id="roomNumber"name="roomNumber" >
<button>Delete room</button>
</form>

<form action="editRoom" method="post">
room number:<input type="text" id="roomNumber"name="roomNumber" >
category:<input type="text" id="category"name="category" >
location:<input type="text" id="location"name="location" >
price:<input type="text" id="price"name="price" >
<button>update room</button>
</form>
<br><br><br>

</div>
<div style="display: none;" id="wedding">
<h3>WEDDING HALL CRUD</h3>
<form action="addWeddingHall" method="post">
wedding hall number:<input type="text" id=weddingHallNumber name="weddingHallNumber" >
category:<input type="text" id="category"name="category" >
location:<input type="text" id="location"name="location" >
price:<input type="text" id="price"name="price" >
<button>Add wedding hall</button>
</form>

<form action="editWeddingHall" method="post">
wedding hall number:<input type="text" id=weddingHallNumber name="weddingHallNumber" >
category:<input type="text" id="category"name="category" >
location:<input type="text" id="location"name="location" >
price:<input type="text" id="price"name="price" >
<button>update wedding hall</button>
</form>

<form action="deleteWeddingHall" method="post">
wedding hall number:<input type="text" id=weddingHallNumber name="weddingHallNumber" >
<button>delete wedding hall</button>
</form>
</div>


<div style="display: none;" id="meeting">
<h3>MEETING HALL CRUD</h3>
<form action="addMeetingHall" method="post">
meeting hall number:<input type="text" id=meetingHallNumber name="meetingHallNumber" >
category:<input type="text" id="category"name="category" >
location:<input type="text" id="location"name="location" >
price:<input type="text" id="price"name="price" required>
<button>Add meeting hall</button>
</form>




<form action="editMeetingHall" method="post">
meeting hall number:<input type="text" id=meetingHallNumber name="meetingHallNumber" >
category:<input type="text" id="category"name="category" >
location:<input type="text" id="location"name="location" >
price:<input type="text" id="price"name="price" >
<button>update meeting hall</button>
</form>

<form action="deleteMeetingHall" method="post">
meeting hall number:<input type="text" id=meetingHallNumber name="meetingHallNumber" >
<button>delete meeting hall</button>
</form>
<br><br><br>
</div>


<a href="ListAll.jsp"><button>List all Users</button></a>
</body>
</html>