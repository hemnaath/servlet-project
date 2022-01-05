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
</body>
</html>