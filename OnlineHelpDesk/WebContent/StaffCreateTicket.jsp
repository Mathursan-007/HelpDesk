<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create ticket</title>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" ></script>
	<link rel="stylesheet" type="text/css" href="css/createTick.css">
	
	<script>
	$(document).ready(function(){
		$("#ticket_submit").submit(function(){
			var text=$("#tt").val();
			
			
			if(text.length > 20)
				{
					$("#error1").text("Subject cannot contain more than 20 characters");
					return false;
				}
			
		});
		
		
	});
	</script>
</head>

<body>

	<div class="container">
		<div class="back">
			<div class="scroll7">
			
				<form action="addticket" method="post" id="ticket_submit">
			<div class="back1">	
				<label for="subject">Enter Subject of ticket :  </label>	<br>
	 			<input type="text" name="subject" id="tt">   <br> <br>
	 			
	 			<span id="error1" style="color:red"></span>  <br><br>
	 			
	 			<label for="subject">Enter description :  </label>	<br>
	 			<textarea name="description" form="ticket_submit"></textarea> <br>
	 		</div>
	 			
	 		<div class="back2">
	 		     <input type="hidden" value="<%=sid%>" name="SID">
	 			<input type="submit" value="Submit Ticket" class="btn btn-primary" >
	 		</div>
				
				</form>
				</div>
		</div>
	</div>	

</body>
</html>