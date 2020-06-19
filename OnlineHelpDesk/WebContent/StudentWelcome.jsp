<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>StudentWelcome</title>
	
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
	<link rel="stylesheet" type="text/css" href="css/welcome.css">
</head>
<body>


	<div class="container">
		<div class="cc">
			
				<img src="images/userlogo.jpeg" alt="No img">
				
				<h1>Hello</h1>
				<h1><%=student.getFullname()%></h1>
			
		</div>
	</div>


</body>
</html>