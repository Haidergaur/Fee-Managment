<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login page</title>
         <title>Accounts</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="newCascadeStyleSheet.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <style>
            .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 84%, 63% 100%, 34% 88%, 0 92%, 0 0);
            }
        </style>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <main class="d-flex align-items-center primary-background banner-background " style="height: 70vh">
            <div class="container">
                
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card">
                            <div class="card-header primary-background text-white text-center">
                                <span class="fa fa-user-circle-o fa-3x"></span>
                                <br>
                                <p>LOGIN HERE</p>
                            </div>
                   <%
                   request.getSession(false);
					session.invalidate();
                   %>
                                <div class="card-body">
                                    <form  name="myForm" onsubmit="return validateForm()"  id="reg-form" action="studentLogin" method="POST" required="required" required>
     <div class="form-group">
                                    <label for="gender">Select type</label>
                                    <br>
                                    <input type="radio"  id="gender" name="gender" required="required" value="student" >Student
                                    <input type="radio"  id="gender" name="gender" required="required" value="accountant">Accountant
                                    <input type="radio"  id="gender" name="gender"  required="required" value="admin">Admin
                                </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="emails"  required="required" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Id</label>
    <input type="text" class="form-control" required="required" name="passS" id="exampleInputPassword1" placeholder="id">
  </div>
                                <button id="sumbimt-btn" type="submit" class="btn btn-primary">Submit</button>                          
</form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
