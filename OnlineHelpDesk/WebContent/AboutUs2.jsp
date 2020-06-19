<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  
<title> About Us </title>

<style>

  .bg1{
  	background-image: url("images/33.jpg");
  	background-position: center;
  	background-size: cover;
  	display: flex;
  	justify-content: center;
  	align-item: center;
  }
  
  .uni{
  	color: white;
  }
  
  .para{
 	color: #ffffff;
  }

  .image{
  	width: 50%;
  }
  
  .image img{
  	-webkit-box-shadow: 0 0 0 10px #000000 inset;
  	box-shadow: 0 0 0 5px #000000 inset;
  }
  
  
  .bg2{
  	background-image: url("images/00.jpg");
  	background-position: center;
  	background-size: cover;
  	color: #fff ;
  }
  
  .service{
  	margin: 90px auto;
  	text-align: center;
  }
  
  .serve{
  	font-family: sans-serif;
  	letter-spacing: 1px;
  }
  
  .serve:after{
  	content: '';
  	background: white;
  	display: block;
  	height: 3px;
  	width: 150px;
  	margin: 10px auto;
  }
  
  .icon{
  	font-size: 40px;
  	margin: 20px auto;
  	padding: 10px;
  	height: 80px;
  	width: 80px;
  	border: 1px solid white;
  	border-radius: 50%;
  }
  
  .container-fluid {
    padding-top: 2px;
    padding-bottom: 2px;
  }
  
  .col-lg-3:hover{
  	box-shadow: 5px 7px 9px -3px rgba(255,255,255,0.5);
  	cursor: pointer;
  }
 
  
 
  </style>

</head>
<body>

<%@include file = "header2.jsp" %>

	
	<section id="aboutus">
	
		<div class="container-fluid bg1">
		
			<div class="row">
			
				<div class="col-lg-7">
				<br>
				<br>
					<h1 class="uni"><b> University </b></h1>
					
					<p class="para"><b> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et exercitation. </b></p>
					
					<p class="para"><b> A helpdesk is a tool that organizes customer communication to help businesses respond to customers more quickly and effectively. Using our helpdesk allows, our support team to offer the best possible experience to our customers. Helpdesk systems bring everyone’s interactions into one interface and allow different conversations to be cross-referenced and used for more context in the user experience. It also allows for use of features such as categorization and automation as a means to keep track of what kinds of issues, our users are experiencing. voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet. </b></p>
					
					<br>
					<br>
				</div>
				
				
				<div class="col-lg-5">
					<div class="img">
					<br>
					<br>
					<br>
					<br>
					<br>
						<img src="images/header1.jpg" class="img-thumbnail align-self-center ml-3" width="500" height="300">
					</div>
				</div>
			
			</div>
		
		</div>
	
	</section>
	
	<div class="container-fluid bg2">
		<div class="service">
			<h1 class="serve"> Our Services</h1>
		</div>
		
		<div class="row">
		
			<div class="col-lg-3 text-center">
				<div class="icon">
					<i class="fa fa-handshake-o"></i>
				</div>
				<h3> Point of Contact </h3>
				<p class="para">For users to gain assistance in troubleshooting, getting answers to questions, and solve known problems.dolore magna aliqua Ut enim ad minim veniam.
				</p>
			</div>
			
			<div class="col-lg-3 text-center">
				<div class="icon">
					<i class="fa fa-users"></i>
				</div>
				<h3> Seamless Experience </h3>
				<p class="para"> We provided a seamless experience when users interact with our help desk. ore et dolore magna aliqua. Ut enim ad minim veniam,
				</p>
			</div>
			
			<div class="col-lg-3 text-center">
				<div class="icon">
					<i class="fa fa-desktop"></i>
				</div>
				<h3> Problem Resolution </h3>
				<p class="para"> We track and analyze problems and resolve those quickly. empor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				</p>
			</div>
			
			<div class="col-lg-3 text-center">
				<div class="icon">
					<i class="fa fa-line-chart"></i>
				</div>
				<h3> Enhance facilities </h3>
				<p class="para"> Enhancing our operations efficiency and facilities provided by our university through our help desk.temp dolore magna aliqua.Ut enim ad minim veniam,
				</p>
			</div>
			
		</div>
		<br>
		<br>
	</div>


</body>

<%@include file = "footer2.jsp" %>

</html>