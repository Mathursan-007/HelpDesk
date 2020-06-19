<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.oop.service.AdminServiceImpl"%>   
<%@ page import="com.oop.service.IAdminService" %>   
<%@ page import="com.oop.model.Handler" %>   
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Handler list</title>

    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" ></script>
	<link rel="stylesheet" type="text/css" href="css/viewUser.css">

</head>
<body>

	<div class="container">
		<div class="bgms">
			<div class="scroll9">
				<span class="r1"> <h1>Handlers</h1> </span>
			<div>
				 <table id="table" border="1">
				<tr class="trees">
					<th> Handler_ID </th>
					<th> Staff_ID </th>
					<th> Full_Name </th>
					<th> Email </th>
					<th> Phone </th>
					<th> Appointed_Date </th>
					<th> Action </th>
					
				</tr>
				<%
				  ArrayList<Handler> Handlers=new ArrayList<>();
				
				  Handlers=iAdminService.listHandlers();
				  for(Handler handler:Handlers){%>
				<tr class="table_rows">
				    <td><%=handler.getHandlerID() %></td> 
				    <td><%=handler.getStaffID() %></td> 
				    <td><%=handler.getFullname()%></td> 
				    <td><%=handler.getEmail() %></td> 
				    <td><%=handler.getPhone() %></td> 
				    <td><%=handler.getAppointed_Date() %></td>
				    <td class="mathu">
				        <form action="deletehandler" method="post">
				        <input type="hidden" value="<%=handler.getHandlerID()%>" name="hid" style="width:100%;">
				        <input type="submit" value="Delete" class="btn btn-danger"> 
				        </form>
				    </td>    
				</tr>
				<%} %>
			</table>
			</div>
			
			
			
				
				
				</div>
			</div>
		</div>
</body>
</html>