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

<style type="text/css">
table,td,th,tr{
border:1px solid black;
border-collapse: collapse;
}
</style>

</head>
<body>
<h3>Guest dashboard</h3>







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
	room.style.display="block";
	
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
		wedding.style.display="block";
		
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
		meeting.style.display="block";
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
		users.style.display="block"
	}
</script>


<a onclick="roomShow()"><h3>ROOM BOOKING</h3></a>
<a onclick="weddingShow()"><h3>WEDDING HALL BOOKING</h3></a>
<a onclick="meetingShow()"><h3>MEETING HALL BOOKING</h3></a>
<a onclick="bookingShow()"><h3>MY BOOKINGS</h3></a>






<div style="display: none;" id="room">
<form action="bookRoom" method="post">
Check-In :<input type="date" id="checkIn" name="checkIn" required>
Check-Out<input type="date" id="checkOut" name="checkOut" required>
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
<input type="submit" value="Book Room">
</form>

<form action="updateRoom" method="post">
Room Number :<input type="text" id=roomNumber name="roomNumber" required>
Check-In :<input type="date" id="checkIn" name="checkIn" required>
Check-Out :<input type="date" id="checkOut" name="checkOut" required>
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
<button>Update room</button>
</form>

<form action="cancelRoom" method="post">
Room Number :<input type="text" id=roomNumber name="roomNumber" required>
<button>cancel room</button>
</form>
</div>





<div style="display: none;" id="wedding">
<form action="bookWeddingHall" method="post">
Check-In :<input type="date" id="checkIn" name="checkIn" required>
Check-Out :<input type="date" id="checkOut" name="checkOut" required>
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
<input type="submit" value="Book Wedding hall">
</form>

<form  action="updateWeddingHall" method="post">
Wedding Hall Number :<input type="text" id=weddingHallNumber name="weddingHallNumber" required>
Check-In :<input type="date" id="checkIn" name="checkIn" required>
Check-Out :<input type="date" id="checkOut" name="checkOut" required>
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
<button>Update Wedding Hall</button>
</form>

<form action="cancelWeddingHall" method="post">
Wedding Hall Number :<input type="text" id=weddingHallNumber name="weddingHallNumber" required>
<button>cancel Wedding Hall</button>
</form>
</div>







<div style="display: none;" id="meeting">
<form  action="bookMeetingHall"method="post">
Check-In :<input type="date" id="checkIn" name="checkIn" required>
Check-Out :<input type="date" id="checkOut" name="checkOut" required>
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
Meeting Hall Nummber :<input type="text" id=meetingHallNumber name="meetingHallNumber" required>
Check-In :<input type="date" id="checkIn" name="checkIn" required>
Check-Out :<input type="date" id="checkOut" name="checkOut" required>
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
Meeting Hall Number :<input type="text" id=meetingHallNumber name="meetingHallNumber" required>
<button>cancel Meeting Hall</button>
</form>
</div>




<div style="display: none;" id="booking">
<table cellpadding=2px cellspacing=20px>
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



<a href="Index.jsp"><h3>LOGOUT</h3></a>






</body>
</html>