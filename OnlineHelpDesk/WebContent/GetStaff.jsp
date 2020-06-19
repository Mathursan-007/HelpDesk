<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.oop.model.Staff" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Staff</title>
<link href="css/bootstrap.css" rel="stylesheet">

<style>
.form-container{
border:0px solid #000;
padding:60px 60px;
margin-top:20vh;
-webkit-box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
-moz-box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75); 
margin-bottom:20vh;
}
body{
background-image:url('images/bus.png');
height: auto;
width: auto;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}
label{
color:#000;
}

</style>
</head>
<%
 String adminid=(String)session.getAttribute("adminid");
 if(adminid!=null){
	 
Staff staff=(Staff)request.getAttribute("staff");
%>
<body>

<%@include file = "header2.jsp" %>
<div class="contanier-fulid bg">
	<div class="row">
	<div class="col-md-4 col-sm-4 col-xs-12"></div>
	<div class="col-md-4 col-sm-4 col-xs-12">

<form action="updatestaff" method="post" id="register" class="form-container">
 	
		 	<h1 class="text-center"> StaffProfile </h1><br><br>
		 	
		 	<div class="form-group">
		     <label for="ID">Enter Staff ID :  </label>	
		 	<input type="text" name="ID" class="form-control" value="<%=staff.getStaffID()%>">
		 	</div>
		 	<div class="form-group">
		 	<label for="First name"> Enter Full Name : </label> 
		  	<input type="text" name="fname" class="form-control" value="<%=staff.getFullname()%>">
		  	</div>
		  	 
		  	<div class="form-group">
		 	<label for="Last name">Email Address : </label> 	
		 	<input type="email" name="email"class="form-control" value="<%=staff.getEmail()%>">
		 	</div>
		 	<div class="form-group">	
		 	<label for="Last name">Contact Number : </label> 	
		 	<input type="tel" id="phone" name="phone" class="form-control" placeholder="07XXXXXXXX" value="<%=staff.getPhone()%>">
		 	</div>
		 	<div class="form-group">
		 	<label for="Type">Select type of Staff</label>
		 	<select name="Type"  class="form-control" >
		 		<option value="<%=staff.getType()%>"> <%=staff.getType()%> </option>
		 		<option value="Non-Academic Staff"> Non-Academic-Staff </option>
		 		<option value="Academic Staff"> Academic Staff </option>
		 		<option value="Administrative Staff"> Administrative Staff </option>
		 	</select>
		 	</div>
 
         <button class="btn btn-info" type="submit" value="Update Staff">Update Staff</button>
    </form>
        </div>
	    <div class="col-md-4 col-sm-4 col-xs-12"></div>
	 </div>
	</div>
<%@include file = "footer2.jsp" %>     
</body>
<%}else if(adminid==null){%>
   <jsp:forward page="Login.jsp"></jsp:forward>
<% }%>
</html>