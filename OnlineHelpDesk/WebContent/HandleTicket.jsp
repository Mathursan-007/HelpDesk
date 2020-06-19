<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.oop.model.Ticket"%>
<%@ page import="com.oop.service.AdminServiceImpl" %>       
<%@ page import="com.oop.service.IAdminService" %>   
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
String adminid=(String)session.getAttribute("adminid");
String hid=(String)session.getAttribute("hid");
 if(adminid!=null||hid!=null){
 
Ticket ticket=new Ticket();
int tid=Integer.parseInt(request.getParameter("tid"));

IAdminService iAdminService=new AdminServiceImpl();
ticket=iAdminService.getTicket(tid);

%>
<body class="gbar">
<%@include file = "header2.jsp" %>
		
	<div class="container">

			<div class="b">
			 <div class="scro">
			
				
				<h2> Subject of the Ticket :</h2>
				<div class="b1">
					<p><%=ticket.getSubject() %></p>
				</div>
				
				<br>
				
				<h2> Description :</h2>
				<div class="b2">
					<p> <%=ticket.getDescription()%></p>
				</div>
				
				<div class="b3" >
				
				<button id="cen" class="btn btn-primary"> Enter Solution</button>					
				<form action="closeticket" method="post" id="change desc">
				    <input type="hidden" value="<%=adminid%>" name="adminid">
				    <input type="hidden" value="<%=hid%>" name="hid">
                    <input type="hidden" value="<%=tid%>" name="tid">
	 				<textarea name="reply" form="change desc" placeholder="Enter Reply" id="d1"></textarea> <br>
	 				<input type="submit" value="Send Reply" class="btn btn-success" id="d2">
				
				</form>
				
				</div>
			 </div>	
			</div>
		</div>

<%@include file = "footer2.jsp" %>
</body>
<%}else if(adminid==null&&hid==null){%>
   <jsp:forward page="Login.jsp"></jsp:forward>
<% }%>
</html>