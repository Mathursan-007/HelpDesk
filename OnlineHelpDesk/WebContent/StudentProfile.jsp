<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.oop.model.Student" %>    
<%@page import="com.oop.service.UserServiceImpl" %>  
<%@page import="com.oop.service.IUserService" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>StudentProfile</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/profileDetails.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" ></script>

<script>

	$(document).ready(function(){
		
		$("#hide1").hide();
		$("#hide2").hide();
		$("#hide3").hide();
		$("#hide4").hide();
		
		$("#change").click(function(){
			$("#hide1").toggle();
			$("#hide2").toggle();
			$("#hide3").toggle();
			$("#hide4").toggle();
			
		});
		
		
		
		$("#stdProf").submit(function(){
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


</head>


<%

Student student=new Student();
IUserService impl=new UserServiceImpl();
student=impl.getStudent(id);

%>
<body>

	<div class="hello">
		<div class="scroll5">
			<h1>Profile Details</h1>
	
	<fieldset>
    
        
        	<table >
  				<tr>
    				<th>Student ID </th>
    				<td><%=student.getStudentID()%></td>
    				
  				</tr>
  				
  				<tr>
    				<th>Full Name</th>
    				<td><%=student.getFullname()%></td> 
    				
  				</tr>
  				
  				<tr>
    				<th>Email Address</th>
    				<td><%=student.getEmail()%></td> 
    				
  				</tr>
  				
  				<tr>
    				<th>Contact Number 	</th>
    				<td><%=student.getPhone()%></td> 
    				
  				</tr>
  				
  				<tr>
    				<th>Batch 	</th>
    				<td><%=student.getBatch() %></td> 
    				
  				</tr>
  				
  				
  				<tr>
    				<td colspan="2" id="change"><button class="btn btn-primary">Change password</button></td>
  				</tr>
  				
  				
  				
  				<form action="updatestudentpassword" method="post" id="stdProf">
  				<tr id="hide1">
  					
  					
    				<th>New Password </th>
    				<td>
    				<input type="hidden" name="ID" value="<%=student.getStudentID() %>">
    				<input type="password" name="pwd" id="pwd"  required>
    				</td> 
    				
  				</tr>
  				
  				<tr id="hide2">
    				<th>Confirm New Password 	</th>
    				<td><input type="password" name="confirm" id="confirm" required></td> 
    				
  				</tr>
  				
  				
  				
  				<tr id="hide3">
    				<td colspan="2"> <input type="submit" value="Save New Password" class="btn btn-success"></td>
    				
  				</tr>
  				
  				
  				<tr id="hide4">
    				<td colspan="2" > <span id="error" style="color:red"></span> </td>
    				
  				</tr>				
  				</form>
  				<tr>
  				<td colspan="2" >
  				 <form action="deletestudent" method="post">
    				<input type="hidden" name="ID" value="<%=student.getStudentID() %>">
    				<input type="submit" value="Delete Account" class="btn btn-danger">
    			</form>
    			</td>
  				</tr>
  				
  				
  			</table>
  			
  			
  		
	</fieldset> 
			</div>
		</div>
	
	
		

</body>

</html>