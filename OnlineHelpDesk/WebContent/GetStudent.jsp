<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.oop.model.Student" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Info</title>
<link href="css/bootstrap.css" rel="stylesheet">
</head>
<style>

.bg{
	background-image: url("images/88.jpg");
	height: auto;
	width: auto;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

.form{
	border: 1px solid #808080;
	padding: 40px 60px;
	 
	box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.8);
	margin-top:20vh;
	margin-bottom:20vh;
}

</style>

</head>
<% String adminid=(String)session.getAttribute("adminid");
 if(adminid!=null){%>
<body>
<%
Student student=(Student)request.getAttribute("student");
%>

<%@include file = "header2.jsp" %>

<div class="container-fluid bg">
	<div class="row">
		<div class="col-md-4 col-sm-4 col-xs-12"></div>
		<div class="col-md-4 col-sm-4 col-xs-12">

		<!-- form starts -->

			<br>

			<form action="updatestudent" method="post" class="form">
 	
 				<h1 class="text-center"> Student Profile </h1>
 				
 				<br>
 
 				<div class="form-group">
 					<label for="ID">Enter Student ID :  </label>	
 					<input type="text" id="ID" name="ID" class="form-control" placeholder="Student ID" value="<%=student.getStudentID()%>" readonly> <br>
 				</div>
 	
 				<div class="form-group">
 					<label for="Full name"> Enter Full Name : </label>
  					<input type="text" id="Full name" name="fname" class="form-control" placeholder="Full name" value="<%=student.getFullname()%>"> <br>
  				</div>
  	
  				<div class="form-group">
 					<label for="Email">Email Address : </label>
 					<input type="email" id="Email" name="email" class="form-control" placeholder="Email" value="<%=student.getEmail()%>"> <br>
 				</div>
 		
 				<div class="form-group">
 					<label for="phone">Contact Number : </label> 	
 					<input type="tel" id="phone" name="phone" class="form-control" placeholder="07XXXXXXXX" value="<%=student.getPhone()%>"> <br>
 				</div>
 	
 				<div class="form-group">
 					<label for="Batch">Select Batch</label>
 					<select id="Batch" name="Batch" class="form-control">
 						<option selected  value="<%=student.getBatch()%>"><%=student.getBatch()%></option>
 						<option value="Weekday"> Weekday </option>
 						<option value="Weekend"> Weekend </option>
 					</select>	<br>
 				</div>
 	
 	
 				
				<button class="btn btn-success btn-block" type="submit"> Update Student</button>

 
 			</form>
 			
 			<br>
	
		<!-- form ends -->
		
		</div>
	</div>
</div>

</body>

<%@include file = "footer2.jsp" %>
<%}else if(adminid==null){%>
   <jsp:forward page="Login.jsp"></jsp:forward>
<% }%>
</html>