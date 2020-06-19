<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.oop.model.Ticket"%>
<%@ page import="com.oop.service.UserServiceImpl" %>    
<%@ page import="com.oop.service.IUserService" %>  
<%@ page import="java.util.ArrayList" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sent Ticket</title>
</head>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" ></script>
	<link rel="stylesheet" type="text/css" href="css/sentTicket.css">
	
	<script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
	
</head>

<body>

	<div class="container">
		<div class="bgm">
			<div class="scroll">
			
				<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for subjects.." title="Type in a name">
				
				 <table style="width:100%" id="myTable">
				  <tr class="tree">
				    <th>No</th>
				    <th>Subject</th>
				    <th>Status</th> 
				    <th>Actions</th>
				  </tr>		
				 
				  <%ArrayList<Ticket> Tickets=new ArrayList<>();	 
				   IUserService iUserService = new UserServiceImpl();
				   Tickets=iUserService.getSentTickets(sid);
                   int num=1;
               
                   for(Ticket ticket:Tickets){ %>		
				  
				    <tr class="table_row">
			    <td><%=num%></td>
			    <td><%=ticket.getSubject()%></td>
			    <td id="status"><%=ticket.getStatus()%></td>
			    <td>
			    	<form action="getticket" method="post" id="r">
			    	     
			            <input type="hidden" value="<%=ticket.getTicketID()%>" name="tid">
						<input id="button" type="submit" value="View Ticket" class="btn btn-primary" onclick="myFunction()"	><br> 
			    	</form>	
			    	<form action="getsolution" method="post">   
			    	    
			    	    <input type="hidden" value="<%=ticket.getTicketID()%>" name="tid">
						<input type="submit" value="Solution" class="btn btn-success"> 
				    </form>
				 	
				 	<br>
			    	<form action="deleteticket" method="post">
			    	     <input type="hidden" value="<%=sid%>" name="SID">
			    	    <input type="hidden" value="<%=ticket.getTicketID()%>" name="tid">   
			    		<span class="se"><input type="submit" value="Delete Ticket" class="btn btn-danger" ></span>
				    </form>
				    
			    </td>
			  </tr>
			  
			  
			  
			  <% num++;} %>
			  
				</table>						 
			</div>
		</div>
		
	</div>
	
</body>

</html>