<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.oop.model.Ticket"%>    
<%@ page import="com.oop.service.HandlerServiceImpl"%>   
<%@ page import="com.oop.service.IHandlerService" %>   
<%@ page import="java.util.ArrayList" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>In progress Tickets </title>
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
    <link rel="stylesheet" type="text/css" href="css/viewUser.css">
</head>

<body>
   
    
      <div class="container">
		<div class="bgms">
			<div class="scroll9">
				<span class="r1"> <h1>Inprogress Tickets</h1> </span>
               	<div>


				<table border="1" id="table" style="width:100%;">
					<tr class="trees">
					
						<th>Ticket ID</th>
						<th>Created_on</th>
						<th>Subject</th>
						<th>Priority</th>
						<th>Action</th>
					</tr>
					<%
			        Tickets=iHandlerService.getInprogressTickets(hid);
			        for(Ticket ticket:Tickets){%>
					<tr class="table_rows">
					    
					    <td><%=ticket.getTicketID() %></td>
			            <td><%=ticket.getCreated_on() %></td>
			            <td><%=ticket.getSubject() %></td>
			            <td><%=ticket.getPriority() %></td>
			            <td>
			            <form action="HandleTicket.jsp" method="post">
			            <input type="hidden" value="<%=ticket.getTicketID() %>" name="tid">
			            <input type="submit" value="View" class="btn btn-info"> 
			            </form>
			            <form action="cancelticket" method="post">
			            <input type="hidden" value="<%=ticket.getTicketID() %>" name="tid">
			            <input type="submit" value="Cancel" class="btn btn-danger"> 
			            </form>
			            </td>
			            
			            
			        </tr>
			        <%}%>    
				</table>
			</div>
	     </div>
	  </div>
	 </div> 
				

</body>
</html>