<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.oop.model.Ticket"%>
<%@ page import="com.oop.service.UserServiceImpl" %>   
<%@ page import="com.oop.service.IUserService" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view solution</title>
	
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
	<link rel="stylesheet" type="text/css" href="css/viewSol.css">


</head>

<%
String id=(String)session.getAttribute("id");
String sid=(String)session.getAttribute("sid");
 
Ticket ticket=(Ticket)request.getAttribute("ticket");

if(id!=null||sid!=null){

%>
<body class="a">
<%@include file = "header2.jsp" %>
		
	<div class="container">

			<div class="b">
			  <div class="scroll20">
				
				<h2> Subject of the Ticket :</h2>
				<div class="b1">
					<p> <%=ticket.getSubject() %> </p>
				</div>
				
				<br>
				
				<h2> Description :</h2>
				<div class="b2">
					<p> <%=ticket.getDescription()%> </p>
				</div>
				
				<br>
				
				<h2> Solution :</h2>
				<div class="b2">
					<p> <%=ticket.getReply()%> </p>
				</div>
				
				
			 </div>
			</div>
		</div>

<%@include file = "footer2.jsp" %>
</body>
<%}else if(id==null&&sid==null){%>
   <jsp:forward page="Login.jsp"></jsp:forward>
<% }%>
</html>