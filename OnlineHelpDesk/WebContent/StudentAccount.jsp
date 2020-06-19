<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>StudentAccount</title>
	
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" ></script>
	<link rel="stylesheet" type="text/css" href="css/sidebar.css">
	

	
	<script>
		$(document).ready(function(){
			$("#main").hide();
			$("#main1").hide();
			$("#main2").hide();
			$("#main3").show();
			
			$("#but1").click(function(){

				$("#main").show();
				$("#main1").hide();
				$("#main2").hide();
				$("#main3").hide();
			});
			
			$("#but2").click(function(){
				$("#main").hide();
				$("#main1").show();
				$("#main2").hide();
				$("#main3").hide();

			});
			
			
			$("#but3").click(function(){
				$("#main").hide();
				$("#main1").hide();
				$("#main2").show();
				$("#main3").hide();
				
			});
			
			$("#but5").click(function(){
				$("#main").hide();
				$("#main1").hide();
				$("#main2").hide();
				$("#main3").show();
				
			});
		});

		
		
		
	
	
	</script>
	
	
</head>

<%
String id=(String)session.getAttribute("id");
if(id!=null){%> 
<body class="sin1">



<%@include file = "header2.jsp" %>	
	
	
		<div class="row">
		
		
			<div class="col-lg-3" >
					<div class="sidebar_section">
					<button id="but5"><span class="fa fa-user"  aria-label="Left Align" style="float:right;font-size:30px;"></span> <%=id %></button> 
                    <button id="but1"><span class="fa fa-list-alt"  aria-label="Left Align" style="float:right;font-size:30px;"></span>Profile</button>
					<button id="but2"><span class="fa fa-plus"  aria-label="Left Align" style="float:right;font-size:30px;"></span>   Create Ticket</button> 
					<button id="but3"><span class="fa fa-check"  aria-label="Left Align" style="float:right;font-size:30px;"></span>   Sent Tickets</button> 
					</div>
			</div>
		
			
			<div class="col-lg-9">
				<div class = "sin">
					<span id="main" > <%@include file="StudentProfile.jsp"%> </span>
					<span id="main1"> <%@include file="StudentCreateTicket.jsp"%> </span>
					<span id="main2"> <%@include file="StudentSentTicket.jsp"%> </span>	
					<span id="main3"> <%@include file="StudentWelcome.jsp"%> </span>
				</div>	 			
			</div>
			
		</div>	
	

<%@include file = "footer2.jsp" %>
</body>
<%}else if(id==null){ %>
<jsp:forward page="Login.jsp"></jsp:forward>
<%} %>
</html>
 
