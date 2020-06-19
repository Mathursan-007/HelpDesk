<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Handler</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" ></script>

<script>

	$(document).ready(function(){
		
		$("#register").submit(function(){
			var password=$("#sid").val();
			var confirmPassword=$("#pwd").val();
			
			if(password == confirmPassword)
			{
				$("#error").text("Success");
				return true;
			}
		else
			{
				$("#error").text("Password must be same as the Staff ID");
				return false;
			}
				
				
				
			
		});
		});
	
	
</script>

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
	padding: 40px 20px;
	 paddin-left:10px;
	 padding-right:10px;
	box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.8);
	margin-top:10vh;
	margin-bottom:20vh;
}

</style>


<body>

 <div class="container-fluid bg">
	<div class="row">
     <div class="col-md-4 col-sm-4 col-xs-12"></div>
     <div class="col-md-4 col-sm-4 col-xs-12">
     
    <form action="addhandler" method="post" class="form" id="register">
      
      <h1 class="text-center"> Register </h1>
   
  
    <div  class="form-group">
      <label>Handler ID</label>
      <input type="text" class="form-control" name="hid" placeholder="Handler ID" required>
    </div>
    <div  class="form-group">
      <label>Staff ID</label>
      <input type="text" class="form-control" name="sid" placeholder="Staff ID" id="sid" required>
    </div>
    <div class="form-group">
      <label>Full name</label>
      <input type="text" class="form-control" name="fullname" placeholder="Full name" aria-describedby="inputGroupPrepend" required>
    </div>
    <div class="form-group">
      <label>Email</label>
      <input type="text" class="form-control" name="email" placeholder="Email" required>
    </div>
    <div class="form-group">
      <label>Phone No.</label>
      <input type="text" class="form-control" name="phone" placeholder="Phone" required>
    </div>
    <div class="form-group">
      <label>Password</label>
      <input type="password" class="form-control" name="pwd" placeholder="Password" id="pwd" required>   <br>
      <span id="error" style="color:red"></span>
    </div>
  
  
 
  <button class="btn btn-primary" type="submit" value="Add Handler" style="margin-left:100px" >Add Handler</button>
</form>
 
     </div>
     <div class="col-md-4 col-sm-4 col-xs-12"></div>
   </div>
</div>
 
 
</body>
</html>