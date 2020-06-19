<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  
<title>Insert title here</title>

<script>

$('#myList a[href="about_us.jpg"]').on('click', function () {
	  $(this).tab('show')
	})
	
</script>


<style>

 .header img{

  height:200px;
  width:100%;
  
   
  background-size: cover;
  background-position: center;
  background-attachment: fixed;
  background-repeat: no-repeat;
 
 }

.nav-item dropdown{
  	display: inline-block;
  }
 
  .dropdown-menu{
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 100px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.6);
  z-index: 1;
  }
 
  .dropdown-menu a{
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
  }
 
  .dropdown-menu a:hover {
  background-color: #e9ecef;
  }
 
  .nav-item dropdown:hover .dropdown-menu{
  display: block;
  }

</style>
</head>
<body>


<header class="header"> <img src="images/header.jpg"> </header>

<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:black">
  <a class="navbar-brand text-dark" style="color: #0000cc;"><img src="images/helpdesk.png" width="100" height="50" alt=""></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link text-light" href="index2.jsp"> Home </a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-light" href="AboutUs2.jsp"> About Us </a>
      </li>
    </ul>
    
    <form class="form-inline mr-2 mr-lg-0 ml-auto">
      <input class="form-control mr-sm-1" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-light my-2 my-sm-0" type="submit">
      	<i class="fa fa-search"></i>
      </button>
    </form>
      
    <ul class="navbar-nav">
      
      <li class="nav-item">
      	<a class="nav-link text-light" href="#">
      		<span class="fa fa-sign-out"> </span>
      		
      	</a>
      </li>
      <form action="logout" method="post">
      <input type="submit" value="Logout" class="btn btn-dark">
      </form>
      
   </ul>
    
  </div>
</nav>

</body>
</html>