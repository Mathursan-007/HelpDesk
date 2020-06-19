<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LogIn</title>
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" ></script>
 <script type='text/javascript' src='jquery-ui/jquery-ui.js'></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

</head>
<style>
body{
background-image:url('images/photo-1518600654093-2a24cddafa38.jpg');
background-attachment:fixed;
background-size:cover;
font-family:new time roman;
}
.form-container{
border:0px solid #000;
padding:80px 80px;
margin-top:10vh;
-webkit-box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
-moz-box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
margin-bottom:50px; 
}
center{
  color: #000;
  letter-spacing: 2px;
  font-size:30px;
  margin-top:5px;
  font-family:Poppins;
  text-transform: uppercase;
}
</style>
 

<body>
<%Boolean user=(Boolean)request.getAttribute("user"); %>
<script>
$(document).ready(function(){
	
	if(<%=user%>==false)
	{
		$("#error").text("Invalid User ID or Password");
		return false;
	}
	
	
	
	
	$('#check').click(function() {
	    if ($('#exampleInputPassword1').attr('type') == 'text') {
	      $('#exampleInputPassword1').attr('type', 'password');
	    } else {
	      $('#exampleInputPassword1').attr('type', 'text');
	    }
	  });
	
	
});
	
	
	

</script>




<%@include file = "header.jsp" %>
	<div class="contanier-fulid bg">
	<div class="row">
	<div class="col-md-4 col-sm-4 col-xs-12"></div>
	<div class="col-md-4 col-sm-4 col-xs-12">
	
	<form class="form-container" action="login" method="post">
	<center> LogIn </center> <br>
	<div class="form-group">
	<label>User ID</label>
	<input type="text" class="form-control" id="exampleInputName" placeholder="User ID" name="ID" required>
	</div>
	<div class="form-group">
	<label>Password</label>
	<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="pwd"required>
	</div><br>
	<input type='checkbox' id='check' /> Show password
	<button type="submit" class="btn btn-success btn-block">Login</button>
	<span id="error" style="color:red;" ></span>
	</form>
	</div>
	<div class="col-md-4 col-sm-4 col-xs-12"></div>
	</div>
	</div>
	<%@include file = "footer.jsp" %>
</body>
</html>

