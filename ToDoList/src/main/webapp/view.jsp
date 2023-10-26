<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view</title>

<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="BootStrap/bootstrap.css">
<style type="text/css">
.f1{
height:400px;
width:500px;
margin-left:550px;
margin-top:100px;
padding:20px;
border-radius:20px;
}
.a1{
margin-left:175px;
}</style>
</head>
<body>

<nav class="navbar navbar-expand-lg  fixed-top  bg-info">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">ToDo App</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="#">Home</a>
        <a class="nav-link" href="#">Services</a>
        <a class="nav-link" href="#">Contact</a>
       
      </div>
    </div>
  </div>
</nav>


<div class="reg-form ">
<table class="table mt-5 table-striped table-hover">
            <thead>
	        	<tr>
	        	    <th scope="col">Date</th>
	            	<th scope="col">Description</th>
	            	<th scope="col">Title</th>
	            	<th scope="col">Status</th>
	            	<th scope="col" class="text-center">update</th>
	        	</tr>
	        </thead>
	        <tbody>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/todo","root","root");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from task");
int count=0;

while(rs.next()){
	%>
	
	<tr>
	<th scope="row"><%= rs.getString(4) %></th>
	<td><%= rs.getString(1) %></td>
	<td><%= rs.getString(2) %></td>
	<td><%= rs.getString(3) %></td>
	<td>
		<input type = "hidden" class="t" value = "<%= rs.getString(1) %>">
	    <button style="margin-left:8px" onclick="updateFunction(<%= count++ %>)" class="btn btn-info" type ="submit">Edit</button>
	</td>
	<td>
	    <form action="removetask" method="post">
	    <input type = "hidden" name ="t" value = "<%=rs.getString(1) %>">
	    <button style="margin-left:-1px" class="btn btn-success" type ="submit">Remove</button> 
	    </form>
	</td>
	</tr>
	
	<% 
}
%> 
    </tbody>
    </table>
</div>
<script>
function updateFunction(count) {
	var title = document.getElementsByClassName("t")[count].value;
  document.getElementsByClassName("reg-form")[0].innerHTML = 
	  '<form action="edittask" class="f1 bg-info" method="post">'+
	  	
        
       '<div class="mb-3"> <label for="e1" class="form-label" >Title</label>'+
       ' <input type="text" placeholder="enter title" name="title" disabled class="form-control" id="e1"></div> '+
   
	       '<div class="mb-3">  <label for="e4" class="form-label" >Status</label><br>'+
             '<select name="status" class="form-control" id="e4">'+
		    			'<option value="">(select an option)</option>'+
		       			'<option value="ongoing">ongoing</option>'+
		       			'<option value="to be completed">to be completed</option>'+			       			
		       			'<option value="completed">completed</option></select></div>'+
			          
	 
       '<div class="mb-3"><label for="e3" class="form-label">Date</label>'+
        '<input type="date" name="date" class="form-control" id="e3"> </div>'+
  
		' <button type="submit" class="btn btn-info btn-lg bg-danger a1">Update</button> '+
	'</form>';
	document.getElementsByName("title")[0].value = title;
}
</script>

</body>
</html>