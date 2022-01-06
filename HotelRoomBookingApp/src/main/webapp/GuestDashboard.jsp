<%@page import="com.hotelroombooking.daoimpl.WeddingHallTransactionDaoImpl"%>
<%@page import="com.hotelroombooking.daoimpl.MeetingHallTransactionDaoImpl"%>
<%@page import="com.hotelroombooking.model.WeddingHallTransaction"%>
<%@page import="com.hotelroombooking.model.MeetingHallTransaction"%>
<%@page import="com.hotelroombooking.model.Guest"%>
<%@page import="com.hotelroombooking.daoimpl.RoomTransactionDaoImpl"%>
<%@page import="com.hotelroombooking.model.RoomTransaction"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
table,td,th,tr{
border:1px solid black;
border-collapse: collapse;
}
.gestDashboard form {
    background: aliceblue;
    padding: 10px;
    width: 31%;
    margin-bottom: 18px;
}
.gestDashboard form input {
    width: 100%;
    margin-bottom: 10px;
}
table th {
    text-align: center;
}
</style>

</head>
<body>
<h3 class="text-center">Guest dashboard</h3>


<script type="text/javascript">
function roomShow()
{
	var wedding=document.getElementById("wedding");
	wedding.style.display="none";
	var meeting=document.getElementById("meeting");
	meeting.style.display="none";
	var users=document.getElementById("booking");
	users.style.display="none"
	var room=document.getElementById("room");
	room.style.display="flex";
	
	}
	function weddingShow()
	{
		var room=document.getElementById("room");
		room.style.display="none";
		var meeting=document.getElementById("meeting");
		meeting.style.display="none";
		var users=document.getElementById("booking");
		users.style.display="none"
		var wedding=document.getElementById("wedding");
		wedding.style.display="flex";
		
	}
	function meetingShow()
	{
		var room=document.getElementById("room");
		room.style.display="none";
		var wedding=document.getElementById("wedding");
		wedding.style.display="none";
		var users=document.getElementById("booking");
		users.style.display="none"
		var meeting=document.getElementById("meeting");
		meeting.style.display="flex";
	}
	function bookingShow()
	{
		var room=document.getElementById("room");
		room.style.display="none";
		var wedding=document.getElementById("wedding");
		wedding.style.display="none";
		var meeting=document.getElementById("meeting");
		meeting.style.display="none";
		var users=document.getElementById("booking");
		users.style.display="flex"
	}
</script>

<div class="container">
<div class="row gestDashboard">
	<div class="col-sm-4">
		<a onclick="roomShow()"><h3>ROOM BOOKING</h3></a>
		<a onclick="weddingShow()"><h3>WEDDING HALL BOOKING</h3></a>
		<a onclick="meetingShow()"><h3>MEETING HALL BOOKING</h3></a>
		<a onclick="bookingShow()"><h3>MY BOOKINGS</h3></a>
		
		<a href="logout"><h3>LOGOUT</h3></a>
	</div>
	<div class="col-sm-8">
		
<div style="display: none;justify-content: space-between;" id="room">
	<form action="bookRoom" method="post">
		Check-In :
		<br><input type="date" id="checkIn" name="checkIn" required><br>
		Check-Out:
		<br><input type="date" id="checkOut" name="checkOut" required><br>
		Category :
		<br><input type="text" id="cat" list="category" name="category" required><br>
		<datalist id="category" name="category">
		<option value="premium">premium</option>
		<option value="luxury">luxury</option>
		<option value="standard">standard</option>
		<option value="budget">budget</option>
		</datalist>
		Location :
		<br><input type="text" id="loc" list="location" name="location" required><br>
		<datalist id="location" name="location">
		<option value="chennai">Chennai</option>
		<option value="coimbatore">Coimbatore</option>
		<option value="madurai">Madurai</option>
		<option value="sivakasi">Sivakasi</option>
		</datalist>
		<input type="submit" value="Book Room">
	</form>

	<form action="updateRoom" method="post">
	Room Number :
	<br><input type="text" id=roomNumber name="roomNumber" required><br>
	Check-In :
	<br><input type="date" id="checkIn" name="checkIn" required><br>
	Check-Out :
	<br><input type="date" id="checkOut" name="checkOut" required><br>
	Category :
	<br><input type="text" id="cat" list="category" name="category" required><br>
	<datalist id="category" name="category">
	<option value="premium">premium</option>
	<option value="luxury">luxury</option>
	<option value="standard">standard</option>
	<option value="budget">budget</option>
	</datalist>
	Location :
	<br><input type="text" id="loc" list="location" name="location" required><br>
	<datalist id="location" name="location">
	<option value="chennai">Chennai</option>
	<option value="coimbatore">Coimbatore</option>
	<option value="madurai">Madurai</option>
	<option value="sivakasi">Sivakasi</option>
	</datalist>
	<button>Update room</button>
	</form>

	<form action="cancelRoom" method="post">
	Room Number :<input type="text" id=roomNumber name="roomNumber" required><br>
	<button>cancel room</button>
	</form>
</div>


<div style="display: none;justify-content: space-between;" id="wedding">
	<form action="bookWeddingHall" method="post">
	Check-In :
	<br><input type="date" id="checkIn" name="checkIn" required><br>
	Check-Out :
	<br><input type="date" id="checkOut" name="checkOut" required><br>
	Category :
	<br><input type="text" id="cat" list="category" name="category" required><br>
	<datalist id="category" name="category">
	<option value="premium">premium</option>
	<option value="luxury">luxury</option>
	<option value="standard">standard</option>
	<option value="budget">budget</option>
	</datalist>
	Location :
	<br><input type="text" id="loc" list="location" name="location" required><br>
	<datalist id="location" name="location">
	<option value="chennai">Chennai</option>
	<option value="coimbatore">Coimbatore</option>
	<option value="madurai">Madurai</option>
	<option value="sivakasi">Sivakasi</option>
	</datalist>
	<input type="submit" value="Book Wedding hall">
	</form>

	<form  action="updateWeddingHall" method="post">
		Wedding Hall Number :
		<br><input type="text" id=weddingHallNumber name="weddingHallNumber" required><br>
		Check-In :
		<br><input type="date" id="checkIn" name="checkIn" required><br>
		Check-Out :
		<br><input type="date" id="checkOut" name="checkOut" required><br>
		Category :
		<br><input type="text" id="cat" list="category" name="category" required><br>
		<datalist id="category" name="category">
		<option value="premium">premium</option>
		<option value="luxury">luxury</option>
		<option value="standard">standard</option>
		<option value="budget">budget</option>
		</datalist>
		Location :
		<br><input type="text" id="loc" list="location" name="location" required><br>
		<datalist id="location" name="location">
		<option value="chennai">Chennai</option>
		<option value="coimbatore">Coimbatore</option>
		<option value="madurai">Madurai</option>
		<option value="sivakasi">Sivakasi</option>
		</datalist>
		<button>Update Wedding Hall</button>
	</form>

	<form action="cancelWeddingHall" method="post">
		Wedding Hall Number :
		<br><input type="text" id=weddingHallNumber name="weddingHallNumber" required><br>
		<button>cancel Wedding Hall</button>
		</form>
		</div>
		
	<div style="display: none;justify-content: space-between;" id="meeting">
		<form  action="bookMeetingHall"method="post">
		Check-In :
		<br><input type="date" id="checkIn" name="checkIn" required><br>
		Check-Out :
		<br><input type="date" id="checkOut" name="checkOut" required><br>
		Category :
		<br><input type="text" id="cat" list="category" name="category" required><br>
		<datalist id="category" name="category">
		<option value="premium">premium</option>
		<option value="luxury">luxury</option>
		<option value="standard">standard</option>
		<option value="budget">budget</option>
		</datalist>
		Location :
		<br><input type="text" id="loc" list="location" name="location" required><br>
		<datalist id="location" name="location">
		<option value="chennai">Chennai</option>
		<option value="coimbatore">Coimbatore</option>
		<option value="madurai">Madurai</option>
		<option value="sivakasi">Sivakasi</option>
		</datalist>
		<input type="submit" value="Book Meeting hall">
	</form>

		<form action="updateMeetingHall" method="post">
			Meeting Hall Nummber :
			<br><input type="text" id=meetingHallNumber name="meetingHallNumber" required><br>
			Check-In :
			<br><input type="date" id="checkIn" name="checkIn" required><br>
			Check-Out :
			<br><input type="date" id="checkOut" name="checkOut" required><br>
			Category :
			<br><input type="text" id="cat" list="category" name="category" required><br>
			<datalist id="category" name="category">
			<option value="premium">premium</option>
			<option value="luxury">luxury</option>
			<option value="standard">standard</option>
			<option value="budget">budget</option>
			</datalist>
			Location :
			<br><input type="text" id="loc" list="location" name="location" required><br>
			<datalist id="location" name="location">
			<option value="chennai">Chennai</option>
			<option value="coimbatore">Coimbatore</option>
			<option value="madurai">Madurai</option>
			<option value="sivakasi">Sivakasi</option>
			</datalist>
			<button>Update Meeting Hall</button>
			</form>
			
			<form action="cancelMeetingHall" method="post">
				Meeting Hall Number :<br>
				<input type="text" id=meetingHallNumber name="meetingHallNumber" required><br>
			<button>cancel Meeting Hall</button>
			</form>
		</div>




<div style="display: none;" id="booking">
<table cellpadding=2px cellspacing=20px width="100%">
<tr>
<th>Room Number</th>
<th>CheckIn Date</th>
<th>CheckOut Date</th>
<th>Category</th>
<th>Location</th>
</tr>

<%Guest guestObj = (Guest)session.getAttribute("currentUser");

RoomTransactionDaoImpl roomTransDaoImpl = new RoomTransactionDaoImpl();
List<RoomTransaction> roomList = roomTransDaoImpl.showRoomBooking(guestObj);

WeddingHallTransactionDaoImpl weddingHallDaoImpl = new WeddingHallTransactionDaoImpl();
List<WeddingHallTransaction> weddingHallList = weddingHallDaoImpl.showWeddingHallBooking(guestObj);

MeetingHallTransactionDaoImpl meetingHallDaoImpl = new MeetingHallTransactionDaoImpl();
List<MeetingHallTransaction> meetingHallList = meetingHallDaoImpl.showMeetingHallBooking(guestObj);


for(int i=0;i<roomList.size();i++)
{
	RoomTransaction roomTransObj = roomList.get(i);
%>
<tr>
<td><%=roomTransObj.getroomNumber() %></td>
<td><%=roomTransObj.getCheckIn() %></td>
<td><%=roomTransObj.getCheckOut() %></td>
<td><%=roomTransObj.getCategory() %></td>
<td><%=roomTransObj.getLocation() %></td>
</tr>

<%}

for(int i=0;i<weddingHallList.size();i++)
{
	WeddingHallTransaction weddingHallTransObj = weddingHallList.get(i);
%>
<tr>
<td><%=weddingHallTransObj.getroomNumber() %></td>
<td><%=weddingHallTransObj.getCheckIn() %></td>
<td><%=weddingHallTransObj.getCheckOut() %></td>
<td><%=weddingHallTransObj.getCategory() %></td>
<td><%=weddingHallTransObj.getLocation() %></td>
</tr>

<%}

for(int i=0;i<meetingHallList.size();i++)
{
	MeetingHallTransaction meetingHallTransObj = meetingHallList.get(i);
%>
<tr>
<td><%=meetingHallTransObj.getroomNumber() %></td>
<td><%=meetingHallTransObj.getCheckIn() %></td>
<td><%=meetingHallTransObj.getCheckOut() %></td>
<td><%=meetingHallTransObj.getCategory() %></td>
<td><%=meetingHallTransObj.getLocation() %></td>
</tr>

<%}%>
</table>
</div>
	</div>
</div>
</div>



</body>
</html>