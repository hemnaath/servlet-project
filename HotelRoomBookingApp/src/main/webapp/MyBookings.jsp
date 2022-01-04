<%@page import="com.hotelroombooking.model.MeetingHallTransaction"%>
<%@page import="com.hotelroombooking.daoimpl.MeetingHallTransactionDaoImpl"%>
<%@page import="com.hotelroombooking.model.WeddingHallTransaction"%>
<%@page import="com.hotelroombooking.daoimpl.WeddingHallTransactionDaoImpl"%>
<%@page import="com.hotelroombooking.model.RoomTransaction"%>
<%@page import="java.util.List"%>
<%@page import="com.hotelroombooking.daoimpl.RoomTransactionDaoImpl"%>
<%@page import="com.hotelroombooking.model.Guest"%>
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
</body>
</html>