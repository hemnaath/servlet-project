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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<style type="text/css">
table,td,th,tr{
border:1px solid black;
border-collapse: collapse;
}
.gestDashboard form {
    background: #ffffff;
    padding: 10px;
    width: 51%;
    margin-bottom: 18px;
    margin: 10px auto;
    border-radius: 10px;
    box-shadow: 0px 0px 14px 0px #dbdbdb;
}.gestDashboard form input {
    width: 100%;
    margin-bottom: 10px;
}
table th,td {
    text-align: center;
}
.sideMenuItems ul {
    padding: 0px;
}
.sideMenuItems ul li {
    list-style: none;
    line-height: 1.5;
    font-size: 15px;
    font-weight: bold;
    /* border-bottom: 1px solid #565656; */
    margin-bottom: 6px;
    color: white;
}
.sideMenu {
    height: 100%;
    /* box-shadow: 0px 0px 17px 0px #d5d5d5; */
    border-radius: 0px;
    padding: 20px;
    background: black;
}
ul.dropdown {
    padding-left: 15px;
    margin-bottom: 19px;
    box-shadow: 0px 0px 36px 0px #1c1c1c;
    border-radius: 2px;
    margin-top: 9px;
}
.sideMenuItems ul li a {
    border-bottom: 2px solid #007bff;
    border-radius: 4px;
    padding: 2px 4px;
    margin-bottom: 0px;
    display: block;
}
.header {
    padding-top: 24px;
    background: #075fbc;
    color: white;
    padding-bottom: 24px;
}
.gestDashboard form {
    color: black;
    font-weight: bold;
}
.loginForm input {
    margin-bottom: 11px;
}
.formBtn {
    text-align: center;
}
.formBtn input, .formBtn button {
    margin: 0px 0px;
    font-size: 13px;
    padding: 5px 15px;
    background: #34c2df;
    color: black;
    border: none;
    font-weight: bold;
    width:100%
}

</style>
</head>
<body>
<div class="header container-fluid">
<h3>Welcome Admin</h3>
</div>

<script type="text/javascript">
function one()
{
	var room=document.getElementById("one");
	room.style.display="flex";
	var room=document.getElementById("two");
	room.style.display="none";
	var room=document.getElementById("three");
	room.style.display="none";
	var room=document.getElementById("four");
	room.style.display="none";
	var room=document.getElementById("five");
	room.style.display="none";
	var room=document.getElementById("six");
	room.style.display="none";
	var room=document.getElementById("seven");
	room.style.display="none";
	var room=document.getElementById("eight");
	room.style.display="none";
	var room=document.getElementById("nine");
	room.style.display="none";
	var room=document.getElementById("ten");
	room.style.display="none";
}
function two()
{
	var room=document.getElementById("one");
	room.style.display="none";
	var room=document.getElementById("two");
	room.style.display="flex";
	var room=document.getElementById("three");
	room.style.display="none";
	var room=document.getElementById("four");
	room.style.display="none";
	var room=document.getElementById("five");
	room.style.display="none";
	var room=document.getElementById("six");
	room.style.display="none";
	var room=document.getElementById("seven");
	room.style.display="none";
	var room=document.getElementById("eight");
	room.style.display="none";
	var room=document.getElementById("nine");
	room.style.display="none";
	var room=document.getElementById("ten");
	room.style.display="none";
}function three()
{
	var room=document.getElementById("one");
	room.style.display="none";
	var room=document.getElementById("two");
	room.style.display="none";
	var room=document.getElementById("three");
	room.style.display="flex";
	var room=document.getElementById("four");
	room.style.display="none";
	var room=document.getElementById("five");
	room.style.display="none";
	var room=document.getElementById("six");
	room.style.display="none";
	var room=document.getElementById("seven");
	room.style.display="none";
	var room=document.getElementById("eight");
	room.style.display="none";
	var room=document.getElementById("nine");
	room.style.display="none";
	var room=document.getElementById("ten");
	room.style.display="none";
}function four()
{
	var room=document.getElementById("one");
	room.style.display="none";
	var room=document.getElementById("two");
	room.style.display="none";
	var room=document.getElementById("three");
	room.style.display="none";
	var room=document.getElementById("four");
	room.style.display="flex";
	var room=document.getElementById("five");
	room.style.display="none";
	var room=document.getElementById("six");
	room.style.display="none";
	var room=document.getElementById("seven");
	room.style.display="none";
	var room=document.getElementById("eight");
	room.style.display="none";
	var room=document.getElementById("nine");
	room.style.display="none";
	var room=document.getElementById("ten");
	room.style.display="none";
}function five()
{
	var room=document.getElementById("one");
	room.style.display="none";
	var room=document.getElementById("two");
	room.style.display="none";
	var room=document.getElementById("three");
	room.style.display="none";
	var room=document.getElementById("four");
	room.style.display="none";
	var room=document.getElementById("five");
	room.style.display="flex";
	var room=document.getElementById("six");
	room.style.display="none";
	var room=document.getElementById("seven");
	room.style.display="none";
	var room=document.getElementById("eight");
	room.style.display="none";
	var room=document.getElementById("nine");
	room.style.display="none";
	var room=document.getElementById("ten");
	room.style.display="none";
}function six()
{
	var room=document.getElementById("one");
	room.style.display="none";
	var room=document.getElementById("two");
	room.style.display="none";
	var room=document.getElementById("three");
	room.style.display="none";
	var room=document.getElementById("four");
	room.style.display="none";
	var room=document.getElementById("five");
	room.style.display="none";
	var room=document.getElementById("six");
	room.style.display="flex";
	var room=document.getElementById("seven");
	room.style.display="none";
	var room=document.getElementById("eight");
	room.style.display="none";
	var room=document.getElementById("nine");
	room.style.display="none";
	var room=document.getElementById("ten");
	room.style.display="none";
}function seven()
{
	var room=document.getElementById("one");
	room.style.display="none";
	var room=document.getElementById("two");
	room.style.display="none";
	var room=document.getElementById("three");
	room.style.display="none";
	var room=document.getElementById("four");
	room.style.display="none";
	var room=document.getElementById("five");
	room.style.display="none";
	var room=document.getElementById("six");
	room.style.display="none";
	var room=document.getElementById("seven");
	room.style.display="flex";
	var room=document.getElementById("eight");
	room.style.display="none";
	var room=document.getElementById("nine");
	room.style.display="none";
	var room=document.getElementById("ten");
	room.style.display="none";
}function eight()
{
	var room=document.getElementById("one");
	room.style.display="none";
	var room=document.getElementById("two");
	room.style.display="none";
	var room=document.getElementById("three");
	room.style.display="none";
	var room=document.getElementById("four");
	room.style.display="none";
	var room=document.getElementById("five");
	room.style.display="none";
	var room=document.getElementById("six");
	room.style.display="none";
	var room=document.getElementById("seven");
	room.style.display="none";
	var room=document.getElementById("eight");
	room.style.display="flex";
	var room=document.getElementById("nine");
	room.style.display="none";
	var room=document.getElementById("ten");
	room.style.display="none";
}function nine()
{
	var room=document.getElementById("one");
	room.style.display="none";
	var room=document.getElementById("two");
	room.style.display="none";
	var room=document.getElementById("three");
	room.style.display="none";
	var room=document.getElementById("four");
	room.style.display="none";
	var room=document.getElementById("five");
	room.style.display="none";
	var room=document.getElementById("six");
	room.style.display="none";
	var room=document.getElementById("seven");
	room.style.display="none";
	var room=document.getElementById("eight");
	room.style.display="none";
	var room=document.getElementById("nine");
	room.style.display="flex";
	var room=document.getElementById("ten");
	room.style.display="none";
}function ten()
{
	var room=document.getElementById("one");
	room.style.display="none";
	var room=document.getElementById("two");
	room.style.display="none";
	var room=document.getElementById("three");
	room.style.display="none";
	var room=document.getElementById("four");
	room.style.display="none";
	var room=document.getElementById("five");
	room.style.display="none";
	var room=document.getElementById("six");
	room.style.display="none";
	var room=document.getElementById("seven");
	room.style.display="none";
	var room=document.getElementById("eight");
	room.style.display="none";
	var room=document.getElementById("nine");
	room.style.display="none";
	var room=document.getElementById("ten");
	room.style.display="block";
}
</script>
<div class="container-fluid">
<div class="row gestDashboard">
<div class="col-sm-4 p-0">
<div class="sideMenu">
		<div class="sideMenuItems">
			<ul>
				<li><a onclick="roomShow()">ROOM BOOKING</a>
					<ul class="dropdown">
						<li onclick="one()">New Booking</li>
						<li onclick="two()">Change Room</li>
						<li onclick="three()">Cancel Room</li>
					</ul>
				</li>
				<li><a onclick="weddingShow()">WEDDING HALL BOOKING</a>
					<ul class="dropdown">
						<li onclick="four()">New Booking</li>
						<li onclick="five()">Change Room</li>
						<li onclick="six()">Cancel Room</li>
					</ul>
				</li>
				<li><a onclick="meetingShow()">MEETING HALL BOOKING</a>
					<ul class="dropdown">
						<li onclick="seven()">New Booking</li>
						<li onclick="eight()">Change Room</li>
						<li onclick="nine()">Cancel Room</li>
					</ul>
				</li>
				<li><a onclick="ten()">MY BOOKINGS</a></li>
			</ul>
			<div class="logoutbtn">
				<a href="logout"><h3>LOGOUT</h3></a>
			</div>
		</div>
		
	</div>
</div>
<div class="col-sm-8 align-items-center" style="display: none;" id="one">
<div style="justify-content: space-between;width:100%">
<form action="addRoom" method="post">
<label>room number:</label>
<input type="text" id="roomNumber"name="roomNumber" class="form-control" required>
<label>Category :</label>
<input type="text" id="cat" list="category" name="category" class="form-control" required>
<datalist id="category" name="category">
<option value="premium">premium</option>
<option value="luxury">luxury</option>
<option value="standard">standard</option>
<option value="budget">budget</option>
</datalist>
<label>Location :</label>
<input type="text" id="loc" list="location" name="location" class="form-control" required>
<datalist id="location" name="location">
<option value="chennai">Chennai</option>
<option value="coimbatore">Coimbatore</option>
<option value="madurai">Madurai</option>
<option value="sivakasi">Sivakasi</option>
</datalist>
<label>price:</label>
<input type="text" id="price"name="price" class="form-control" required>
<div class="formBtn">
<button>Add room</button>
</div>
</form>
</div>
</div>
<div class="col-sm-8 align-items-center" style="display: none;" id="two">
<div style="justify-content: space-between;width:100%">
<form action="editRoom" method="post">
<label>room number:</label>
<input type="text" id="roomNumber"name="roomNumber" class="form-control" required>
<label>Category :</label>
<input type="text" id="cat" list="category" name="category" class="form-control" required>
<datalist id="category" name="category">
<option value="premium">premium</option>
<option value="luxury">luxury</option>
<option value="standard">standard</option>
<option value="budget">budget</option>
</datalist>
<label>Location :</label>
<input type="text" id="loc" list="location" name="location" class="form-control" required>
<datalist id="location" name="location">
<option value="chennai">Chennai</option>
<option value="coimbatore">Coimbatore</option>
<option value="madurai">Madurai</option>
<option value="sivakasi">Sivakasi</option>
</datalist>
<label>price:</label>
<input type="text" id="price"name="price" class="form-control" required>
<div class="formBtn">
<button>update room</button>
</div>
</form>
</div>
</div>
<div class="col-sm-8 align-items-center" style="display: none;" id="three">
<div style="justify-content: space-between;width:100%">
<form action="deleteRoom" method="post">
room number:<input type="text" id="roomNumber"name="roomNumber" class="form-control" required>
<div class="formBtn">
<button>Delete room</button>
</div>
</form>
</div>
</div>

<div class="col-sm-8 align-items-center" style="display: none;" id="four">
<div style="justify-content: space-between;width:100%">
<form action="addWeddingHall" method="post">
<label>wedding hall number:</label>
<input type="text" id=weddingHallNumber name="weddingHallNumber" class="form-control" required>
<label>Category :</label>
<input type="text" id="cat" list="category" name="category" class="form-control" required>
<datalist id="category" name="category">
<option value="premium">premium</option>
<option value="luxury">luxury</option>
<option value="standard">standard</option>
<option value="budget">budget</option>
</datalist>
<label>Location :</label>
<input type="text" id="loc" list="location" name="location" class="form-control" required>
<datalist id="location" name="location">
<option value="chennai">Chennai</option>
<option value="coimbatore">Coimbatore</option>
<option value="madurai">Madurai</option>
<option value="sivakasi">Sivakasi</option>
</datalist>
<label>price:</label>
<input type="text" id="price"name="price" required>
<div class="formBtn">
<button>Add wedding hall</button>
</div>
</form>
</div>
</div>
<div class="col-sm-8 align-items-center" style="display: none;" id="five">
<div style="justify-content: space-between;width:100%">
<form action="editWeddingHall" method="post">
<label>wedding hall number:</label>
<input type="text" id=weddingHallNumber name="weddingHallNumber" class="form-control" required>
<label>Category :</label>
<input type="text" id="cat" list="category" name="category" class="form-control" required>
<datalist id="category" name="category">
<option value="premium">premium</option>
<option value="luxury">luxury</option>
<option value="standard">standard</option>
<option value="budget">budget</option>
</datalist>
<label>Location :</label>
<input type="text" id="loc" list="location" name="location" class="form-control" required>
<datalist id="location" name="location">
<option value="chennai">Chennai</option>
<option value="coimbatore">Coimbatore</option>
<option value="madurai">Madurai</option>
<option value="sivakasi">Sivakasi</option>
</datalist>
<label>price:</label>
<input type="text" id="price"name="price" class="form-control" required>
<div class="formBtn">
<button>update wedding hall</button>
</div>
</form>
</div>
</div>
<div class="col-sm-8 align-items-center" style="display: none;" id="six">
<div style="justify-content: space-between;width:100%">
<form action="deleteWeddingHall" method="post">
<label>wedding hall number:</label>
<input type="text" id=weddingHallNumber name="weddingHallNumber" class="form-control" required>
<div class="formBtn">
<button>delete wedding hall</button>
</div>
</form>
</div>
</div>

<div class="col-sm-8 align-items-center" style="display: none;" id="seven">
<div style="justify-content: space-between;width:100%">
<form action="addMeetingHall" method="post">
<label>meeting hall number:</label>
<input type="text" id=meetingHallNumber name="meetingHallNumber" class="form-control" required>
<label>Category :</label>
<input type="text" id="cat" list="category" name="category" class="form-control" required>
<datalist id="category" name="category">
<option value="premium">premium</option>
<option value="luxury">luxury</option>
<option value="standard">standard</option>
<option value="budget">budget</option>
</datalist>
<label>Location :</label>
<input type="text" id="loc" list="location" name="location" class="form-control" required>
<datalist id="location" name="location">
<option value="chennai">Chennai</option>
<option value="coimbatore">Coimbatore</option>
<option value="madurai">Madurai</option>
<option value="sivakasi">Sivakasi</option>
</datalist>
<label>price:</label>
<input type="text" id="price"name="price" class="form-control" required>
<div class="formBtn">
<button>Add meeting hall</button>
</div>
</form>
</div>
</div>
<div class="col-sm-8 align-items-center" style="display: none;" id="eight">
<div style="justify-content: space-between;width:100%">
<form action="editMeetingHall" method="post">
<label>meeting hall number:</label>
<input type="text" id=meetingHallNumber name="meetingHallNumber" class="form-control" required>
<label>Category :</label>
<input type="text" id="cat" list="category" name="category" class="form-control" required>
<datalist id="category" name="category">
<option value="premium">premium</option>
<option value="luxury">luxury</option>
<option value="standard">standard</option>
<option value="budget">budget</option>
</datalist>
<label>Location :</label>
<input type="text" id="loc" list="location" name="location" class="form-control" required>
<datalist id="location" name="location">
<option value="chennai">Chennai</option>
<option value="coimbatore">Coimbatore</option>
<option value="madurai">Madurai</option>
<option value="sivakasi">Sivakasi</option>
</datalist>
<label>price:</label>
<input type="text" id="price"name="price" class="form-control" required>
<div class="formBtn">
<button>update meeting hall</button>
</div>
</form>
</div>
</div>
<div class="col-sm-8 align-items-center" style="display: none;" id="nine">
<div style="justify-content: space-between;width:100%">
<form action="deleteMeetingHall" method="post">
<label>meeting hall number:</label>
<input type="text" id=meetingHallNumber name="meetingHallNumber" class="form-control" required>
<div class="formBtn">
<button>delete meeting hall</button>
</div>
</form>
</div>
</div>




<div class="col-sm-8 align-items-center mt-3" style="display: none;" id="ten">
<div style="justify-content: space-between;width:100%">
<table cellpadding=2px cellspacing=20px width="100%">
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
</div>
</div>
</div>
</div>
</div>
</body>
</html>