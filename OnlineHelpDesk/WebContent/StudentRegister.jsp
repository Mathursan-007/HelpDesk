<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" ></script>

<title> Student Registration </title>

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
<body>

<%@include file = "header.jsp" %>

<div class="container-fluid bg">
	<div class="row">
		<div class="col-md-4 col-sm-4 col-xs-12"></div>
		<div class="col-md-4 col-sm-4 col-xs-12">

		<!-- form starts -->

			<br>

			<form action="addstudent" method="post" id="register" class="form">
 	
 				<h1 class="text-center"> Register </h1>
 				
 				<br>
 
 				<div class="form-group">
 					<label for="ID">Enter Student ID :  </label>	
 					<input type="text" id="ID" name="ID" class="form-control" placeholder="Student ID"> <br>
 				</div>
 	
 				<div class="form-group">
 					<label for="Full name"> Enter Full Name : </label>
  					<input type="text" id="Full name" name="fname" class="form-control" placeholder="Full name"> <br>
  				</div>
  	
  				<div class="form-group">
 					<label for="Email">Email Address : </label>
 					<input type="email" id="Email" name="email" class="form-control" placeholder="Email"> <br>
 				</div>
 		
 				<div class="form-group">
 					<label for="phone">Contact Number : </label> 	
 					<input type="tel" id="phone" name="phone" class="form-control" placeholder="07XXXXXXXX" > <br>
 				</div>
 	
 				<div class="form-group">
 					<label for="Batch">Select Batch</label>
 					<select id="Batch" name="Batch" class="form-control">
 						<option selected> Select Batch </option>
 						<option value="Weekday"> Weekday </option>
 						<option value="Weekend"> Weekend </option>
 					</select>	<br>
 				</div>
 	
 				<div class="form-group">
 					<label for="password">Enter Password:</label>
    				<input type="password" id="pwd" name="pwd" class="form-control" placeholder="Password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required> <br>
    			</div>
  
  				<div class="form-group">
    				<label for="confirm"> Re-enter Password:</label>
    				<input type="password" id="confirm" name="confirm" class="form-control" placeholder="Re-Enter Password" required>  <br>
    				<span id="error" style="color:red"></span>    <br>
    			</div>
 	
 	
 	
 				<button type="submit" class="btn btn-success btn-block"> Submit </button>

 
 			</form>
 			
 			<br>
	
		<!-- form ends -->
		
		</div>
	</div>
</div>

</body>

<%@include file = "footer.jsp" %>


</html>