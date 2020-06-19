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
<title>New Tickets</title>
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
    <link rel="stylesheet" type="text/css" href="css/viewUser.css">
</head>
<body>
     
      <div class="container">
		<div class="bgms">
			<div class="scroll9">
				<span class="r1"> <h1>New Tickets</h1> </span>
               	<div class="scrolls">


			<table border="1">
			       <tr class="trees">
			           <th>Ticket_ID</th>
			           <th>Created_by</th>
			           <th>Created_on</th>
			           <th>Subject</th>
			           <th>Priority</th>
			           <th>Accept</th>
			           <th>Forward</th>
			        </tr>
			        <%
			        ArrayList<Ticket> Tickets=new ArrayList<>();
			      
			        Tickets=iHandlerService.getNewTickets();
			        for(Ticket ticket:Tickets){%>
			        
			         <tr class="table_rows">
			            <td><%=ticket.getTicketID() %></td>
			            <td><%=ticket.getCreated_by() %></td>
			            <td><%=ticket.getCreated_on() %></td> 
			            <td><%=ticket.getSubject() %></td>
			           <form action="acceptticket" method="post"> 
			            <td>
			            <select name="priority">
			                <option value="<%=ticket.getPriority() %>" selected><%=ticket.getPriority() %></option>
			                <option value="High">High</option>
			                 <option value="Medium">Medium</option>
			                <option value="Low">Low</option>
			                </select>    
			            </td>
			            <td>
			            <input type="hidden" value="<%=hid %>" name="hid">
			            <input type="hidden" value="<%=ticket.getTicketID()%>" name="tid">
			            <input type="submit" value="Accept" class="btn btn-success"> 
			            </td>
			           </form>
			            <td>
			            <form action="forwardticket" method="post">
			            <input type="hidden" value="<%=ticket.getTicketID()%>" name="tid">
			            <input type="submit" value="Forward" class="btn btn-primary"> 
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