<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>

	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" ></script>
	<link rel="stylesheet" type="text/css" href="css/sidebar.css">
	
	<style>
	
</style>
			
	<script>
		$(document).ready(function(){
			$("#main").hide();
			$("#main1").hide();
			$("#main2").hide();
			$("#main3").hide();
			$("#main4").show();
			
		
			
			$("#button4").click(function(){
				
				$("#main1").show();
				$("#main").hide();
				$("#main3").hide();
				$("#main2").hide();
				$("#main4").hide();
				
			});
			
            $("#button3").click(function(){
				
				$("#main").show();
				$("#main1").hide();
				$("#main3").hide();
				$("#main2").hide();
				$("#main4").hide();
				
			});
            

            $("#button6").click(function(){
				
				$("#main").hide();
				$("#main1").hide();
				$("#main3").show();
				$("#main2").hide();
				$("#main4").hide();
				
			});

              $("#button5").click(function(){
				
				$("#main").hide();
				$("#main1").hide();
				$("#main3").hide();
				$("#main2").show();
				$("#main4").hide();
				
			});  
              
              $("#button1").click(function(){
  				
  				$("#main").hide();
  				$("#main1").hide();
  				$("#main3").hide();
  				$("#main2").hide();
  				$("#main4").show();
  				
  			});  
			
			
			
		});
		 
		<%String hid=(String)request.getAttribute("hid"); %>

		if(<%=hid!=null%>){
			alert('<%=hid+" already exists"%>');
			<%=hid=null%>
		};
		
		
	
	
	</script>
	
	
</head>
<%
 String adminid=(String)session.getAttribute("adminid");
 if(adminid!=null){%>
<body class="sin1"> 
<%@include file = "header2.jsp" %>		
	
		
		<div class="row">
		
		
			<div class="col-lg-3" >
				<div class="sidebar_section">
					<button id="button1"><span class="fa fa-user-circle"  aria-label="Left Align" style="float:right;font-size:30px;"></span><%=adminid%></button> 
					<button id="button3"><span class="fa fa-user-plus"  aria-label="Left Align" style="float:right;font-size:30px;"></span>Add Handler</button> 
					<button id="button4"><span class="fa fa-users"  aria-label="Left Align" style="float:right;font-size:30px;"></span>Users</button> 
					<button id="button5"><span class="fa fa-users"  aria-label="Left Align" style="float:right;font-size:30px;"></span>Handlers</button> 
					<button id="button6"><span class="fa fa-table"  aria-label="Left Align" style="float:right;font-size:30px;"></span>Tickets</button> 
				</div>	
			</div>
			
			
			<div class="col-lg-9">
		        <div class = "sin">
		            <span id="main4"> <%@include file="AdminWelcome.jsp"%></span>
		            <span id="main"> <%@include file="AddHandler.jsp"%> </span>
					<span id="main1"> <%@include file="ListUsers.jsp"%> </span>
					<span id="main2"> <%@include file="ListHandlers.jsp"%></span>
					<span id="main3"> <%@include file="ListTickets.jsp"%></span>
					
					
				</div>	 
			</div>
		</div>		
	
	

<%@include file = "footer2.jsp" %>		
</body>
<%}else if(adminid==null){ %>
<jsp:forward page="Login.jsp"></jsp:forward>
<%} %>

</html>