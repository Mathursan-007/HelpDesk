<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.oop.model.Ticket"%>
 <%@ page import="com.oop.service.UserServiceImpl"%>   
 <%@ page import="com.oop.service.IUserService" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view ticket</title>
	
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" ></script>
	<link rel="stylesheet" type="text/css" href="css/viewT.css">
	
	<script>
	$(document).ready(function(){
		$("#d1").hide();
		$("#d2").hide();
		
		$("#cen").click(function(){
			$("#d1").toggle();
			$("#d2").toggle();
		});
		
	});
	</script>

</head>
<%
 String id=(String)session.getAttribute("id");
 String sid=(String)session.getAttribute("sid");
  
Ticket ticket=(Ticket)request.getAttribute("ticket");

if(id!=null||sid!=null){
%>
<body class="gbar">
<%@include file = "header2.jsp" %>

	<div class="container">
		<div class="b">
			<div class="scro">
				
				<h2> Subject of the Ticket :</h2>
				<div class="b1">
					<p><%=ticket.getSubject()%> </p>
     
				</div>
				
				<br>
				
				<h2> Description :</h2>
				<div class="b2">
					<p><%=ticket.getDescription()%></p>
				</div>
				
				<div class="b3" >
				
				<button id="cen" class="btn btn-primary"> Edit Description</button>					
				<form action="updateticket" method="post" id="change desc">
				    <input type="hidden" value="<%=id%>" name="ID">
				    <input type="hidden" value="<%=sid%>" name="SID">
				    <input type="hidden" value="<%=ticket.getTicketID()%>" name="tid">
	 				<textarea name="description" form="change desc"  id="d1" ><%=ticket.getDescription()%></textarea> <br>
	 				<input type="submit" value="Save Description" class="btn btn-success" id="d2" >
				
				</form>
				
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