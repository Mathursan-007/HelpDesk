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
  
<title>Home</title>

<style>
  
  .bg-1 { 
    margin: 0;
    padding: 0;
    font family: 'Raleway', sans-serif;
    font-size: 14px;
    font weight: 400;
    color: #777;
  }
  
  h1{
     font-size: 36px;
  	color:#DC143C;
  	font-weight: bold;
   	font-family:Poppins;
   
  }
  
  h3{
  	font-size: 24px;
  	color: #333;
  	font-weight: bold;
  	
  }
  label{
   
  color:#000;
  font-size: 20px;
  }
  .t{
  margin-left:30px;
  }
  
  
  #team img{
  	margin-top: -50px;
  }
  
  #team i{
  	font-size: 26px;
  	color: #555;
  }
  
  #team p{
  	font-weight: 500;
  }
  
  #team .card{
  	border-radius: 0;
  	box-shadow: 5px 5px 15px #e74c3c;
  	trasition: all 0.3s ease-in;
  	-webkit-trasition: all 0.3s ease-in;
  	-moz-trasition: all 0.3s ease-in;
  }
  
  #team .card:hover{
  	background: #e74c3c;
  	color: #fff;
  	border-radius: 5px;
  	border: none;
  	box-shadow: 5px 5px 10px #9E9E9E;
  }
  
  #team .card:hover h3, #team .card:hover i{
  	color: #fff;
  }
  
  /* Make the image fully responsive */
  .carousel-inner img {
    width: 100%;
    height: 70%;
  }
  
  </style>

</head>
<body>

<%@include file = "header2.jsp" %>


<div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/a3.jpg" width="auto" height="500">
      <div class="carousel-caption">
        <h3>Welcome to MIT 	</h3>
        <p>We Are Ready To Help You</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="images/a1.jpg" width="auto" height="500">
      <div class="carousel-caption">
         
      </div>   
    </div>
    <div class="carousel-item">
      <img src="images/tech.jpg" width="auto" height="500">
      <div class="carousel-caption">
         
      </div>   
    </div>
  </div>
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div><br><br>
<div class="t">
<h1>Welcome To MIT Help Desk</h1>
<label>The help desk team is available to assist students,faculty,staff 
	retires,alumni,and guests of the University with technology issues
	and request.<br> We are committed to providing you with excellent customer
	service and prompt technical support solutions. </label>
	
	<br><br>
	
<h1>Need Help ?</h1>
<label>Search the knowledge for information,support and guides or go to the
 User accounts to submit a support ticket.  </label>
</div>


	<section id="team">
		<div class="container my-3 py-5 bg-1 text-center">
			<div class="row mb-5">
				<div class="col">
  					<h1> Our Team </h1><br>
  					<p class="mt-3"> It is a long established fact that a reader will be distracted by the readable content of a page when looking at it's layout </p>
  				</div>
  			</div>
  			
  			<div class="row mb-5">
				<div class="col-lg col-md-6">
					<div class="card">
						<div class="card-body">
  							<img src="images/boss1.jpg" class="img-fluid rounded-circle w-50 mb-3">
  								<h3> Mathursan </h3>
  								<h5> </h5>
  								<p>Information Services, Instructional Design & Technology Specialist </p>
  								
  								<div class="d-flex flex-row justify-content-center">
  									<div class="p-4">
  										<a href="#">
  											<i class="fa fa-facebook">  </i>
  										</a>
  									</div>
  									<div class="p-4">
  										<a href="#">
  											<i class="fa fa-twitter">  </i>
  										</a>
  									</div>
  									<div class="p-4">
  										<a href="#">
  											<i class="fa fa-instagram">  </i>
  										</a>
  									</div>
  								</div>
  						</div>
  					</div>
  				</div>
  				
  				<div class="col-lg col-md-6">
					<div class="card">
						<div class="card-body">
  							<img src="images/boss2.jpg" class="img-fluid rounded-circle w-50 mb-3">
  								<h3> Arosh</h3>
  								<h5> </h5>
  								<p> Information Services, Technical Support Manager
Help Desk </p>
  								
  								<div class="d-flex flex-row justify-content-center">
  									<div class="p-4">
  										<a href="#">
  											<i class="fa fa-facebook">  </i>
  										</a>
  									</div>
  									<div class="p-4">
  										<a href="#">
  											<i class="fa fa-twitter">  </i>
  										</a>
  									</div>
  									<div class="p-4">
  										<a href="#">
  											<i class="fa fa-instagram">  </i>
  										</a>
  									</div>
  								</div>
  						</div>
  					</div>
  				</div>
  				<div class="col-lg col-md-6">
					<div class="card">
						<div class="card-body">
  							<img src="images/boss3.jpg" class="img-fluid rounded-circle w-50 mb-3">
  								<h3>Mathura </h3>
  								<h5> </h5>
  								<p> Information Services, Help Desk Specialist
Help Desk </p>
  								
  								<div class="d-flex flex-row justify-content-center">
  									<div class="p-4">
  										<a href="#">
  											<i class="fa fa-facebook">  </i>
  										</a>
  									</div>
  									<div class="p-4">
  										<a href="#">
  											<i class="fa fa-twitter">  </i>
  										</a>
  									</div>
  									<div class="p-4">
  										<a href="#">
  											<i class="fa fa-instagram">  </i>
  										</a>
  									</div>
  								</div>
  						</div>
  					</div>
  				</div>
  				<div class="col-lg col-md-6">
					<div class="card">
						<div class="card-body">
  							<img src="images/boss6.png" class="img-fluid rounded-circle w-50 mb-3">
  								<h3>Sabesan</h3>
  								<h5> </h5>
  								<p> Information Services, Audio Visual Services Specialist
Audio Visual Services </p>
  								
  								<div class="d-flex flex-row justify-content-center">
  									<div class="p-4">
  										<a href="#">
  											<i class="fa fa-facebook">  </i>
  										</a>
  									</div>
  									<div class="p-4">
  										<a href="#">
  											<i class="fa fa-twitter">  </i>
  										</a>
  									</div>
  									<div class="p-4">
  										<a href="#">
  											<i class="fa fa-instagram">  </i>
  										</a>
  									</div>
  								</div>
  						</div>
  					</div>
  				</div>
  			</div>
		</div>
	</section>

<%@include file = "footer2.jsp" %>

</body>
</html>