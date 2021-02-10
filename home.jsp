<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Quantum accounts</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="newCascadeStyleSheet.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
             .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 80%, 65% 66%, 34% 85%, 0% 70%, 0 0);
            }
           
        </style>
       </head>
    <body>

 <nav class="navbar navbar-expand-lg navbar-dark primary-background">
    <a class="navbar-brand" href="#"><span class="fa fa-university"></span> Accounts</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Test Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
                <center><h5>Accountant details</h5></center>
                <h6>Email: Rohit@gmail.com</h6>
        <h6>ID    : AC28053   </h6>   
        </br>
             <center><h5>Student details</h5></center>
                <h6>Email: sam@gmail.com</h6>
        <h6>ID    : ST1762   </h6>   
        </br>
             <center><h5>Admin details</h5></center>
                <h6>Email: apoorv@gmail.com</h6>
        <h6>ID    : AD5050   </h6>   
        </br>
   
   
     
     
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>


  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#"> <span class="fa fa-desktop"> Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link"  data-toggle="modal" data-target="#exampleModal"href="#"> <span class="fa fa-address-book"></span>Test Details</a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="login.jsp"> <span class="fa fa-user-circle fa-spin"></span>LOGIN</a>
      </li>
     <%
   response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
   response.setHeader("Progma","no-cache");
   response.setDateHeader("Expires",0);
   %>
    </ul>

  </div>
</nav>

 
        <!--container-->
        <div class="container-fluid p-0 m-0">
            <div class="jumbotron primary-background text-white">
                <div class="container">
                <h3 class="display-3">Welcome To Quantum University Accounts Deppt.</h3>
                <a href="login.jsp" class="btn btn-outline-light  btn-lg"><span class="fa fa-user-circle fa-spin"></span>Login</a>
                </div>
            </div>
        </div>
        
        
        <!--javascript-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/myjs.js" type="text/javascript"></script>
    </body>
</html>
