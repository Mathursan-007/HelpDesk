<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.oop.model.Handler"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Handler Profile</title>

<link href="css/bootstrap.css" rel="stylesheet">
<style>

.bg{
	background-image: url("images/88.jpg");
	height: auto;
	width: auto;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

.form{
	border: 1px solid #808080;
	padding: 40px 20px;
	 paddin-left:10px;
	 padding-right:10px;
	box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.8);
	margin-top:10vh;
	margin-bottom:20vh;
}
</style>
</head>
<%
String hid=(String)session.getAttribute("hid");
if(hid!=null){%>
<body>
<%@include file = "header2.jsp" %>	

<%
  Handler handler=(Handler)request.getAttribute("handler");
 %>

<div class="container-fluid bg">
	           <div class="row">
                   <div class="col-md-4 col-sm-4 col-xs-12"></div>
                      <div class="col-md-4 col-sm-4 col-xs-12">

          <form action="updatehandler" method="post" class="form">
			
                    <h1 class="text-center"> Handler Profile </h1>  
			 
			    <div class="form-group">
			      <label>Handler ID</label>
			      <input type="text" class="form-control" name="hid" value="<%=handler.getHandlerID()%>" readonly>
			    </div>
			    <div class="form-group">
			      <label>Staff ID</label>
			      <input type="text" class="form-control" name="sid" value="<%=handler.getStaffID()%>" readonly>
			    </div>
			    <div class="form-group">
			      <label>Full name</label>
			        <input type="text" class="form-control" name="fullname" value="<%=handler.getFullname() %>" aria-describedby="inputGroupPrepend">
			      </div>
			    <div class="form-group">
			      <label>Email</label>
			      <input type="text" class="form-control" name="email" value="<%=handler.getEmail() %>">
			    </div>
			    <div class="form-group">
			      <label>Phone No.</label>
			      <input type="text" class="form-control" name="phone" value="<%=handler.getPhone() %>">
			    </div>
			  
			 
			  <button class="btn btn-info"  type="submit" value="Update Handler" style="margin-left:140px">Update Handler</button>
			</form>
		     
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12"></div>
   </div>
</div>
 	

<%@include file = "footer2.jsp" %>	
</body>
<%}else if(hid==null){%>
<jsp:forward page="Login.jsp"></jsp:forward>
<% }%>
</html>