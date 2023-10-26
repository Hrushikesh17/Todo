<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SIGNUP</title>
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
height:400px;
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

<nav class="navbar fixed-top  bg-info">
    <div class="container-fluid">
    <a class="navbar-brand">ToDo App</a>
    <form class="d-inline-flex" >
    <a class="btn btn-primary  btn-i btn-light form-control me-3 btn-outline-danger" href="sign.jsp" role="button">Sign up</a>
     <a class="btn btn-primary  btn-i btn-light form-control  me-3 btn-outline-danger " href="login.jsp" role="button">Log In</a>
    </form>
  </div>
</nav>


 <form action="registerservlet" method="post" class="f1 bg-info" >
         <div class="mb-3">
             <label for="e1" class="form-label">Name</label>
             <input type="text" placeholder="enter Name" name="name" class="form-control" id="e1">
        </div> 
        <div class="mb-3">
             <label for="e2" class="form-label">Mobile Number</label>
             <input type="tel" placeholder="enter mobile number" name="mob" class="form-control" id="e2">
        </div> 
        <div class="mb-3">
             <label for="e3" class="form-label">Email</label>
             <input type="email" placeholder="enter email" name="email" class="form-control" id="e3">
        </div> 
        <div class="mb-3">
             <label for="exampleInputPassword1" class="form-label">Password</label>
             <input type="password" placeholder="enter password" name="pass" class="form-control" id="exampleInputPassword1">
        </div> 
        <button type="submit" class="btn btn-info btn-lg bg-danger a1">Sign up</button>        
        
</form>
</body>
</html>