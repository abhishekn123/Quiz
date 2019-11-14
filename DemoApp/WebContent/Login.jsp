<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>QUIZ</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel='stylesheet' type='text/css' media='screen' href='css/style.css'>  
    <link href="MDB-Free_4.8.9/css/style.css" rel="stylesheet">
    <link href="MDB-Free_4.8.9/css/mdb.min.css" rel="stylesheet">
    <link href="MDB-Free_4.8.9/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link href="MDB-Free_4.8.9/css/style.css" rel="stylesheet">
    <link href="MDB-Free_4.8.9/css/mdb.min.css" rel="stylesheet">
    <link href="MDB-Free_4.8.9/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.10/css/mdb.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

</head>
<body class="bg" style=" background-image: url('images/bg.jpg');
  height: 100%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;" >
   <div class="container" id="sign" >
     <div id="alert"></div>
       <div class="row">
          <div class="col-12" >
              <div id="signin" class="example z-depth-5 animated bounceIn">
                  <div id="userlogo">
                      <i class="fas fa-user-circle" id="user"></i>
                    </div>
                <form  action="Login" style="margin-top:30px" method="post" >
                        <div class="md-form">
                        <i class="fas fa-user prefix"  id="prefix" ></i>
                        <input type="text" id="inputIconEx2" name="user" class="form-control">
                        <label for="inputIconEx2">E-mail address</label>
                        </div>
                        <div class="md-form">
                        <i class="fas fa-lock prefix"  id="prefix"></i>
                        <input type="password" id="inputValidationEx2" name="pass" class="form-control validate">
                        <label for="inputValidationEx2">Type your password</label>
                         <div id="sbtn"><button type="submit" id="btn-one" class="btn btn-primary" name="submit" style="width:250px;border-radius:30px">signin</button></div>
                        </div>
                       
                </form>
                <form class="md-form" >
                        <a href="Register.jsp" style="margin-left:80px;text-decoration:none" >Create your account?</a>                         
                </form>
                </div>
          </div>
       </div>

   </div>
    


</body>
<script type="text/javascript" src='js/script.js'></script>
<script type="text/javascript" src="MDB-Free_4.8.9/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="MDB-Free_4.8.9/js/popper.min.js"></script>
<script type="text/javascript" src="MDB-Free_4.8.9/js/bootstrap.min.js"></script>
<script type="text/javascript" src="MDB-Free_4.8.9/js/mdb.min.js"></script>
<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.10/js/mdb.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
</html>