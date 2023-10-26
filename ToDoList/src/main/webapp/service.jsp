<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="BootStrap/bootstrap.css">
<style type="text/css">
body{background-color:black;}
.d1{
margin-top:300px;}
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

<div class="row justify-content-evenly  d1">
    <div class="col-4 mt-5">
     <a href="add.jsp" class="btn btn-primary  btn-i btn-light form-control me-3 btn-outline-danger fs-1 fw-bold" role="button">ADD ToDo</a>
    </div>
    <div class="col-4 mt-5">
     <a href="view.jsp" class="btn btn-primary  btn-i btn-light form-control me-3 btn-outline-danger fs-1 fw-bold" role="button">View ToDo</a>
    </div>
  </div>



</body>
</html>