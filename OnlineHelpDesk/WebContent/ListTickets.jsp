<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.oop.model.Ticket"%>    
<%@ page import="com.oop.service.AdminServiceImpl"%>   
<%@ page import="com.oop.service.IAdminService" %>   
<%@ page import="java.util.ArrayList" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tickets list</title>

    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
    <link rel="stylesheet" type="text/css" href="css/viewUser.css">
	<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script> 
</head>
<%
ArrayList<Integer> status=new ArrayList<>();
status=iAdminService.TicketStatus();

%>
<body>
   
   <div class="container">
		<div class="bgms">
		         <span class="r1"> <h1>Tickets</h1> </span>
			<div class="scroll9">
				
               	<div>
							<table class="table table-hover table-dark">
								<tr style="background-color:black">
									<th>Ticket ID</th>
									<th>Created_by</th>
									<th>Created on</th>
									<th>Subject</th>
									<th>Priority</th>
									<th>Status</th>
									<th>Closed on</th>
									<th>Closed by</th>
									<th>Action</th>			
								</tr>
								<% ArrayList<Ticket> Tickets=new ArrayList<>();	 
						            
						             Tickets=iAdminService.ListTickets();
						             
						            
						             for(Ticket ticket:Tickets){ %>		
						             	  
								<tr style="color:#34ebd5">
									<td><%=ticket.getTicketID() %></td>
									<td><%=ticket.getCreated_by() %></td>
									<td><%=ticket.getCreated_on() %></td>
									<td><%=ticket.getSubject() %></td>
									<td><%=ticket.getPriority() %></td>
									<td><%=ticket.getStatus() %></td>
									<td><%=ticket.getClosed_on() %></td>
									<td><%=ticket.getClosed_by() %></td>
									<td>
									<form action="HandleTicket.jsp" method="post">
						            <input type="hidden" value="<%=ticket.getTicketID() %>" name="tid">
						            <input type="submit" value="View" class="btn btn-info"> 
						            </form>
						            </td>
								</tr>
								<%} %>
							</table><br>
						</div>
							<div class="scrolls">
					
					
	
	
	<canvas id="myChart"></canvas>
	
	<script>
		let labels1 = ['New', 'Inprogress','Closed', 'Canceled','Forwarded'];
		let data1 = [<%=status.get(4)%>,<%=status.get(3)%>,<%=status.get(1)%>,<%=status.get(0)%>,<%=status.get(2)%>];
		let colors1= ['#49A9EA','#36CAAB', '#49A9EA','#36CAAB','#49A9EA'];
	
		let myChart1 = document.getElementById("myChart").getContext('2d');
		
		let chart1 = new Chart(myChart1,{
			type: 'bar',
			data: {
				labels: labels1,
				datasets: [ {
					data: data1,
					backgroundColor: colors1,
					minimum:0
				} ]
			},
			
			options : {
				
				responsive: true,
				 scales: {
	                    xAxes: [{
	                            display: true,
	                            scaleLabel: {
	                                display: true,
	                                labelString: 'Type of Ticket'
	                            }
	                        }],
	                    yAxes: [{
	                            display: true,
	                            scaleLabel: {
	                                display: true,
	                                labelString: 'Number of Tickets'
	                            },
	                            ticks: {
	                                beginAtZero: true,
	                            
	                            }
	                        }]
	                },
				title: {
					text: "Ticket Status",
					display: true
					
				},
				legend: {
					display:false
				}
			}
			
		});
		
	</script>
	
					
					
					
					
					
					</div>				
					</div>
					
				</div>	
			</div>
							
	
	
	


</body>
</html>