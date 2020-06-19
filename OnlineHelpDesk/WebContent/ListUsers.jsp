<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.oop.model.Staff"%>
<%@ page import="com.oop.model.Student"%>
<%@ page import="com.oop.service.AdminServiceImpl"%>   
<%@ page import="com.oop.service.IAdminService" %>   
<%@ page import="java.util.*" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Users</title>

	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" ></script>
	<link rel="stylesheet" type="text/css" href="css/viewUser.css">
</head>
<body>

	<div class="container">
		<div class="bgms">
			<div class="scroll9">
				<span class="r1"> <h1>Staffs</h1> </span>
			<div class="scrolls">
				 <table id="table" border="1">
				<tr class="trees">
					<th> Staff_ID </th>
					<th> Full_Name</th>
					<th> Email </th>
					<th> Phone </th>
					<th> Type </th>
					<th> Action</th>
				</tr>
				<%
                  ArrayList<Staff> Staffs=new ArrayList<>();
				  IAdminService iAdminService=new AdminServiceImpl();
				  Staffs=iAdminService.ListStaffs();
				  
				  for(Staff staff:Staffs){%>
				<tr class="table_rows">
				    <td><%=staff.getStaffID() %></td>
				    <td><%=staff.getFullname() %></td>
				    <td><%=staff.getEmail() %></td>
                    <td><%=staff.getPhone() %></td> 
                    <td><%=staff.getType() %></td>	
                    <td>
                    <form action="getstaff" method="post">
                    <input type="hidden" name="ID" value="<%=staff.getStaffID()%>">
                    <input type="submit" value="View" class="btn btn-success">
                    </form>
                    </td>				
			   </tr>
				<%} %>
			</table>
			</div>
			
				<span class="r2"><h1>Students</h1></span>
			<div class="scrolls">
				 <table id="table" border="1">
				<tr class="trees">
					<th> Student_ID </th>
					<th> Full_Name </th>
					<th> Email </th>
					<th> Phone </th>
					<th> Batch </th>
					<th>Action</th>
				</tr>
				<%
                  ArrayList<Student> Students=new ArrayList<>();
				  Students=iAdminService.ListStudents();
				  
				  for(Student student:Students){%>
				<tr class="table_rows">
				    <td><%=student.getStudentID() %></td>
				    <td><%=student.getFullname() %></td>
				    <td><%=student.getEmail() %></td>
                    <td><%=student.getPhone() %></td> 
                    <td><%=student.getBatch() %></td>		
                    <td>
                    <form action="getstudent" method="post">
                    <input type="hidden" name="ID" value="<%=student.getStudentID()%>">
                    <input type="submit" value="View" class="btn btn-success">
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