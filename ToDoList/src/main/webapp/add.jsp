<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add to do</title>

<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="BootStrap/bootstrap.css">
<style type="text/css">
a{
text-decoration:none;
}
body{
color:white;
font-size:20px;
}
.f1{
height:480px;
width:500px;
margin-left:550px;
margin-top:100px;
padding:20px;
border-radius:20px;
}
.a1{
margin-left:175px;
}
</style>
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

<form action="AddServlet" method="post" class="f1 bg-info" >
         <div class="mb-3">
             <label for="e1" class="form-label">Title</label>
             <input type="text" placeholder="enter title" name="title" class="form-control" id="e1">
        </div> 
        <div class="mb-3">
             <label for="e2" class="form-label">Descrpction</label>
             <textarea name="desc" class="form-control" id="e2" rows="5" cols="30" placeholder="Enter Descripction"></textarea>
        </div> 
        <div class="mb-3">
             <label for="e3" class="form-label">Date</label>
             <input type="date" name="date" class="form-control" id="e3">
        </div> 
        <div class="mb-3">
               <label for="e4" class="form-label" >Status</label><br>
                <select name="status" class="form-control" id="e4">
		    			<option value="">(select an option)</option>
		       			<option value="ongoing">ongoing</option>
		       			<option value="to be copleted">to be completed</option>			       			
		       			<option value="completed">completed</option>
			   </select>       
   		</div> 
        <button type="submit" class="btn btn-info btn-lg bg-danger a1">Add Task</button>        
        
</form>

</body>
</html>