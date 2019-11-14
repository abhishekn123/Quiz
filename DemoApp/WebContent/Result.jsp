<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adminstrator</title>
<meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>TEST</title>
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
<sql:query dataSource="${db}"  var="rs" >select * from result order by score desc ;</sql:query>
<nav class="navbar navbar-expand-lg navbar-light warning-color lighten-5">
   <a class="navbar-brand" href="#">
                WELCOME<span style="font-weight:bold;font-size:20px">  ADMINSTRATOR</span>
                </a>
                <form action="Logout" method="post" class="form-inline my-2 my-lg-0 ml-auto"><button type="submit" class=" btn btn-outline-warning waves-effect btn-md my-2 my-sm-0 ml-3 " style=""><i class="fas fa-sign-out-alt" style="text-align:center;color:black;font-size:13px"></i></button></form>               
</nav>
<div class="table-responsive text-nowrap">
  <!--Table-->
  <table class="table table-striped">
    <thead>
      <tr>
        <th>SLNO</th>
        <th>NAME</th>
        <th>SCORE</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var = "row" items = "${rs.rows}" >
      <tr>
       <td><c:out value = "${row.id}"/></td>
        <td><c:out value = "${row.username}"/></td>
         <td><c:out value = "${row.score}"/></td>
      </tr>  
      </c:forEach>  
      </tbody>
    
    
    <!--Table body-->
  </table>
  <!--Table-->
</div>
</body>
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