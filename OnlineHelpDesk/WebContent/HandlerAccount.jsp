<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.oop.service.HandlerServiceImpl" %>       
<%@ page import="com.oop.service.IHandlerService" %>         
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Handler</title>
	
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" ></script>
	<link rel="stylesheet" type="text/css" href="css/sidebar.css">
	
	<style>
	
</style>
	
	<script>
		$(document).ready(function(){
			$("#main").show();
			$("#main1").hide();
			$("#main2").hide();
			$("#main3").hide();
			
			$("#but1").click(function(){

				
				$("#main1").hide();
				$("#main").show();
				$("#main2").hide();
				$("#main3").hide();
			});

			$("#but2").click(function(){

				$("#main1").show();
				$("#main").hide();
				$("#main2").hide();
				$("#main3").hide();
			});
			

			$("#but3").click(function(){

				$("#main2").show();
				$("#main").hide();
				$("#main1").hide();
				$("#main3").hide();
			});
			
			$("#but4").click(function(){

				$("#main3").show();
				$("#main").hide();
				$("#main1").hide();
				$("#main2").hide();
			});
			
			
			
		});
		
		
		
	
	
	</script>
	
	
</head>
<%
String hid=(String)session.getAttribute("hid");
IHandlerService iHandlerService=new HandlerServiceImpl();
if(hid!=null){%>
<body class="sin1"> 
<%@include file = "header2.jsp" %>		
	
		
		<div class="row">
		
		
			<div class="col-lg-3" >
					<div class="sidebar_section">
					<button id="but1"><span class="fa fa-user"  aria-label="Left Align" style="float:right;font-size:30px;"></span><%=hid%></button> 
					<button id="but2"><span class="fa fa-list-alt"  aria-label="Left Align" style="float:right;font-size:30px;"></span>   Profile details</button> 
					<button id="but3"><span class="fa fa-cart-arrow-down"  aria-label="Left Align" style="float:right;font-size:30px;"></span>  New Tickets</button> 
					<button id="but4"><span class="fa fa-hourglass"  aria-label="Left Align" style="float:right;font-size:30px;"></span>  Tickets in progress</button> 
				
					</div>
			</div>
		
			
			<div class="col-lg-9">
				<div class = "sin">
					<span id="main"> <%@include file="HandlerWelcome.jsp"%> </span>
					<span id="main1"> <%@include file="HandlerProfile.jsp"%> </span>
					<span id="main2"> <%@include file="ListNewTickets.jsp"%> </span>
					<span id="main3"> <%@include file="ListInprogressTickets.jsp"%> </span>
					
					
				</div>	 			
			</div>
			
		</div>	
	

<%@include file = "footer2.jsp" %>
</body>
<%}else if(hid==null){%>
<jsp:forward page="Login.jsp"></jsp:forward>
<% }%>
</html>