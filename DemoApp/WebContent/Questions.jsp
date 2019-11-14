<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>QUESTION</title>
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
<body>
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/abc" user="root" password="root"/>
<sql:query dataSource="${db}"  var="rs" >select * from adminstrator;</sql:query>

<nav class="navbar navbar-expand-lg navbar-light warning-color lighten-5">
   <a class="navbar-brand" href="#">
       WELCOME<span style="font-weight:bold;font-size:20px">  ADMINSTRATOR</span>
   </a>
<form action="Logout" method="post" class="form-inline my-2 my-lg-0 ml-auto"><button type="submit" class=" btn btn-outline-warning waves-effect btn-md my-2 my-sm-0 ml-3 " style=""><i class="fas fa-sign-out-alt" style="text-align:center;color:black;font-size:13px"></i></button></form>               
</nav>`
<form  action="adminstrator" method="post">
<div class="container">
<div class="row">

<div class="col-12" style="text-align: center;">
<select class="browser-default custom-select" id="mySelect" name="qselect" onchange="myFunction()">
   <option value="QUESTION"  selected disabled  selected>SELECT QUESTION</option>
   <option value="QUESTION1">QUESTION 1</option>
   <option value="QUESTION2">QUESTION 2</option>	
   <option value="QUESTION3">QUESTION 3</option>
   <option value="QUESTION4">QUESTION 4</option>
   <option value="QUESTION5">QUESTION 5</option>
   <option value="QUESTION6">QUESTION 6</option>
   <option value="QUESTION7">QUESTION 7</option>
   <option value="QUESTION8">QUESTION 8</option>
   <option value="QUESTION9">QUESTION 9</option>
  <option value="QUESTION10">QUESTION 10</option>
  </select>
</div>
<script>
function myFunction() {
  var x = document.getElementById("mySelect").value;
  document.getElementById("demo").innerHTML = x;
}
</script>
<div class="col-12" style="text-align: center;">
<div class="md-form ">
  <i class="fas fa-angle-double-right prefix" style="margin-top:5px;"></i>
  <textarea id="form21" name="question"  class="md-textarea form-control" rows="1"></textarea>
  <label for="form21" id="demo"></label>
  </div>
</div>
</div>
<div class="row">
    				<div class="col-6" style="text-align: center;">
    					  <div class="custom-control " >
  						        <input type="text" class="form-control" id="formGroupExampleInput" name="op1" placeholder="OPTION 1">
  						  </div>
                          <br><br>
                          <div class="custom-control" id="cur">
  						   <input type="text" class="form-control" id="formGroupExampleInput" placeholder="OPTION 2" name="op2">
  						    </div>
  						    </div>
    				<div class="col-6" style="text-align: center;">
    					 <div class="custom-control custom-radio" style="cursor:pointer">
  							           <input type="text" class="form-control" id="formGroupExampleInput" placeholder="OPTION 3" name="op3">
  					     </div>
                          <br><br>
                          <div class="custom-control" style="cursor:pointer">
  						 <input type="text" class="form-control" id="formGroupExampleInput" placeholder="OPTION 4" name="op4">
                          </div>
                     </div>
 				 </div>
</div>
<div class="row">
<select class="browser-default custom-select" style="width:200px;margin:20px auto;" name="cselect">
  <option value="0" selected disabled selected>SELECT CORRECT OPTION</option>
  <option value="1">OPTION1</option>
  <option value="2">OPTION2</option>
  <option value="3">OPTION3</option>
  <option value="4">OPTION4</option>
</select>
</div>
<div class="row">
<div style="width:200px;margin:20px auto;">
<button type="submit" class="btn btn-outline-default waves-effect">SAVE QUESTION</button>
</div>
</div>
</form>
</body>
<script></script>
<script type="text/javascript" src='js/script.js'></script>
<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.10/js/mdb.min.js"></script>
<script type="text/javascript" src="MDB-Free_4.8.9/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="MDB-Free_4.8.9/js/popper.min.js"></script>
<script type="text/javascript" src="MDB-Free_4.8.9/js/bootstrap.min.js"></script>
<script type="text/javascript" src="MDB-Free_4.8.9/js/mdb.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>        

</html>