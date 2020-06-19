<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff Registration</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" ></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script>

	$(document).ready(function(){
		
		$("#register").submit(function(){
			var password=$("#pwd").val();
			var confirmPassword=$("#confirm").val();
			
			if(password == confirmPassword)
				{
					$("#error").text("Passwords match");
					return true;
				}
			else
				{
					$("#error").text("Passwords don't match");
					return false;
				}
		});
		});
	
	
	

</script>

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
<body>
<%@include file = "header.jsp" %>
<div class="contanier-fulid bg">
	<div class="row">
	<div class="col-md-4 col-sm-4 col-xs-12"></div>
	<div class="col-md-4 col-sm-4 col-xs-12">

<form action="addstaff" method="post" id="register" class="form-container">
 	
 	<h1 class="text-center"> Register </h1><br><br>
 	
 	<div class="form-group">
     <label for="ID">Enter Staff ID :  </label>	
 	<input type="text" name="ID" class="form-control">
 	</div>
 	<div class="form-group">
 	<label for="First name"> Enter Full Name : </label> 
  	<input type="text" name="fname" class="form-control">
  	</div>
  	 
  	<div class="form-group">
 	<label for="Last name">Email Address : </label> 	
 	<input type="email" name="email"class="form-control">
 	</div>
 	<div class="form-group">	
 	<label for="Last name">Contact Number : </label> 	
 	<input type="tel" id="phone" name="phone" class="form-control" placeholder="07XXXXXXXX" >
 	</div>
 	<div class="form-group">
 	<label for="Type">Select type of Staff</label>
 	<select name="Type"  class="form-control" >
 		<option> Select Staff Type </option>
 		<option value="Non-Academic Staff"> Non-Academic-Staff </option>
 		<option value="Academic Staff"> Academic Staff </option>
 		<option value="Administrative Staff"> Administrative Staff </option>
 	</select>
 	</div>
 	<div class="form-group">
 	<label for="password">Enter Password:</label>
    <input type="password" name="pwd" id="pwd" class="form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
  </div>
  <div class="form-group">
    <label for="confirm"> Re-enter Password:</label>
    <input type="password" name="confirm" id="confirm" class="form-control" required>
    <span id="error" style="color:red"></span>    <br>
 	</div> 	
 	
 	<input type="submit" class="btn btn-info" value="Register" >
 </form>
</div>
	<div class="col-md-4 col-sm-4 col-xs-12"></div>
	</div>
	</div>
	<%@include file = "footer.jsp" %>
</body>
</html>