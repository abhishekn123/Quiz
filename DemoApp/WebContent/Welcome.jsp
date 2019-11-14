<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
 <html>
<head>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>TEST</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

<%
if(session.getAttribute("username")==null)
{
	response.sendRedirect("Login.jsp");
}
%>
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/abc" user="root" password="root"/>
<div>
        <nav class="navbar navbar-light blue lighten-4">
                <a class="navbar-brand" href="#">
                WELCOME<span style="font-weight:bold;font-size:20px">  ${username}</span>
                </a>
                <form action="Logout" method="post" class="form-inline my-2 my-lg-0 ml-auto"><button type="submit" class=" btn btn-outline-info waves-effect btn-md my-2 my-sm-0 ml-3 " style=""><i class="fas fa-sign-out-alt" style="text-align:center;"></i></button></form>
                </nav>   
                <form action="Score" method="post">                     
              <div class="row" style="margin-top:30px;">
                    <div class="col-2">
                      <div class="list-group " id="list-tab" role="tablist">
                        <a class="list-group-item list-group-item-action active list-group-flush" id="list-settings-list1" data-toggle="list" href="#list-settings1"
                          role="tab" aria-controls="home">1</a>
                        <a class="list-group-item list-group-item-action" id="list-settings-list2" data-toggle="list" href="#list-settings2"
                          role="tab" aria-controls="profile">2</a>
                        <a class="list-group-item list-group-item-action" id="list-settings-list3" data-toggle="list" href="#list-settings3"
                          role="tab" aria-controls="messages">3</a>
                        <a class="list-group-item list-group-item-action" id="list-settings-list4" data-toggle="list" href="#list-settings4"
                          role="tab" aria-controls="settings">4</a>
                          <a class="list-group-item list-group-item-action" id="list-settings-list5" data-toggle="list" href="#list-settings5"
                          role="tab" aria-controls="">5</a>
                          <a class="list-group-item list-group-item-action" id="list-settings-list6" data-toggle="list" href="#list-settings6"
                          role="tab" aria-controls="">6</a>
                          <a class="list-group-item list-group-item-action" id="list-settings-list7" data-toggle="list" href="#list-settings7"
                          role="tab" aria-controls="">7</a>
                          <a class="list-group-item list-group-item-action" id="list-settings-list8" data-toggle="list" href="#list-settings8"
                          role="tab" aria-controls="">8</a>
                          <a class="list-group-item list-group-item-action" id="list-settings-list9" data-toggle="list" href="#list-settings9"
                          role="tab" aria-controls="">9</a>
                          <a class="list-group-item list-group-item-action" id="list-settings-list10" data-toggle="list" href="#list-settings10"
                          role="tab" aria-controls="">10</a>
                      </div>
                    </div>                   
                    <div class="col-8">
                      <div class="tab-content" id="nav-tabContent">
                      
<sql:query dataSource="${db}"  var="rs1" >select * from adminstrator where id=1;</sql:query>

<c:forEach var = "row1" items = "${rs1.rows}" >
                        <div class="tab-pane fade show active animated fadeInUp" id="list-settings1" role="tabpanel" aria-labelledby="list-settings-list1">
                                  <span style="font-size: 20px" class="font-weight-normal"><span class="font-weight-bold" style="font-size: 30px;">1.
                                  </span><c:out value = "${row1.Question}"/>.</span>                          
                                   <div class="container">
  				<div class="row">
    				<div class="col-6" style="text-align: center;">
    					  <div class="custom-control custom-radio" >
  							<input   type="radio" class="custom-control-input" id="defaultUnchecked11" value="1" name="defaultExampleRadios1">
  							<label style="cursor:pointer"class="custom-control-label" for="defaultUnchecked11"><c:out value = "${row1.op1}"/></label>
                          </div>
                          <br><br>
                          <div class="custom-control custom-radio" id="cur">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked13" value="3"  name="defaultExampleRadios1">
  							<label style="cursor:pointer"class="custom-control-label" for="defaultUnchecked13"><c:out value = "${row1.op3}"/></label>
                    </div></div>
    				<div class="col-6" style="text-align: center;">
    					 <div class="custom-control custom-radio" style="cursor:pointer">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked12" value="2" name="defaultExampleRadios1">
  							<label style="cursor:pointer"class="custom-control-label" for="defaultUnchecked12"><c:out value = "${row1.op2}"/></label>
                          </div>
                          <br><br>
                          <div class="custom-control custom-radio" style="cursor:pointer">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked14" value="4" name="defaultExampleRadios1">
  							<label style="cursor:pointer"class="custom-control-label" for="defaultUnchecked14"><c:out value = "${row1.op4}"/></label>
                          </div>
                     </div>
 				 </div>
 				 <br><br>
 				 <br><br>
 				 
</div>
 </div>
 </c:forEach>
 
                        <div class="tab-pane fade animated fadeInUp" id="list-settings2" role="tabpanel" aria-labelledby="list-settings-list2">
                        <sql:query dataSource="${db}"  var="rs2" >select * from adminstrator where id=2;</sql:query>
                        <c:forEach var = "row2" items = "${rs2.rows}" >
                                 <span style="font-size: 20px" class="font-weight-normal"><span class="font-weight-bold" style="font-size: 30px;">2.</span><c:out value = "${row2.Question}"/> </span> 
                          <div class="row">
    				<div class="col-6" style="text-align: center;pointer:cursor;">
    					  <div class="custom-control custom-radio" >
  							<input type="radio" class="custom-control-input" id="defaultUnchecked21" value="1" name="defaultExampleRadios2">
  							<label style="cursor:pointer"class="custom-control-label" for="defaultUnchecked21"><c:out value = "${row2.op1}"/></label>
                          </div>
                          <br><br>
                          <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked23" value="3" name="defaultExampleRadios2">
  							<label style="cursor:pointer"class="custom-control-label" for="defaultUnchecked23"><c:out value = "${row2.op3}"/></label>
                    </div></div>
    				<div class="col-6" style="text-align: center;">
    					 <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked22" value="2" name="defaultExampleRadios2">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked22"><c:out value = "${row2.op2}"/></label>
                          </div>
                          <br><br>
                          <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked24" value="4"name="defaultExampleRadios2">
  							<label style="cursor:pointer"class="custom-control-label" for="defaultUnchecked24"><c:out value = "${row2.op4}"/></label>
                          </div>
                     </div>
 				 </div>
 				 </c:forEach>
 				 <br><br>
                        </div>
                        <div class="tab-pane fade animated fadeInUp" id="list-settings3" role="tabpanel" aria-labelledby="list-settings-list3">
                        <sql:query dataSource="${db}"  var="rs3" >select * from adminstrator where id=3;</sql:query>
                        <c:forEach var = "row3" items = "${rs3.rows}" >
                          <span style="font-size: 20px" class="font-weight-normal"><span class="font-weight-bold" style="font-size: 30px;">3.</span><c:out value = "${row3.Question}"/></span> 
                         <div class="row">
    				<div class="col-6" style="text-align: center;">
    					  <div class="custom-control custom-radio" >
  							<input type="radio" class="custom-control-input" id="defaultUnchecked31" value="1" name="defaultExampleRadios3">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked31"><c:out value = "${row3.op1}"/></label>
                          </div>
                          <br><br>
                          <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked33" value="3" name="defaultExampleRadios3">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked33"><c:out value = "${row3.op3}"/></label>
                    </div></div>
    				<div class="col-6" style="text-align: center;">
    					 <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked32" value="2" name="defaultExampleRadios3">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked32"><c:out value = "${row3.op2}"/></label>
                          </div>
                       
                          <br><br>
                          <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked34" value="4" name="defaultExampleRadios3">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked34"><c:out value = "${row3.op4}"/></label>
                          </div>
                     </div>
 				 </div>
 				 </c:forEach>
 				 <br><br>
                        </div>
                        <div class="tab-pane fade animated fadeInUp" id="list-settings4" role="tabpanel" aria-labelledby="list-settings-list4">
                        <sql:query dataSource="${db}"  var="rs4" >select * from adminstrator where id=4;</sql:query>
                        <c:forEach var = "row4" items = "${rs4.rows}" >
                     <span style="font-size: 20px" class="font-weight-normal"><span class="font-weight-bold" style="font-size: 30px;">4.</span><c:out value = "${row4.Question}"/> </span> 
                         <div class="row">
    				<div class="col-6" style="text-align: center;">
    					  <div class="custom-control custom-radio" >
  							<input type="radio" class="custom-control-input" id="defaultUnchecked41" value="1" name="defaultExampleRadios4">
  							<label style="cursor:pointer"class="custom-control-label" for="defaultUnchecked41"><c:out value = "${row4.op1}"/></label>
                          </div>
                          <br><br>
                          <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked43" value="3" name="defaultExampleRadios4">
  							<label style="cursor:pointer"class="custom-control-label" for="defaultUnchecked43"><c:out value = "${row4.op3}"/></label>
                    </div></div>
    				<div class="col-6" style="text-align: center;">
    					 <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked42" value="2" name="defaultExampleRadios4">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked42"><c:out value = "${row4.op2}"/></label>
                          </div>
                          <br><br>
                          <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked44" value="4" name="defaultExampleRadios4">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked44"><c:out value = "${row4.op4}"/></label>
                          </div>
                     </div>
 				 </div>
 				 </c:forEach>
 				 <br><br>
                        </div>
                        <div class="tab-pane fade animated fadeInUp" id="list-settings5" role="tabpanel" aria-labelledby="list-settings-list5">
                        <sql:query dataSource="${db}"  var="rs5" >select * from adminstrator where id=5;</sql:query>
                        <c:forEach var = "row5" items = "${rs5.rows}" >
                            <span style="font-size: 20px" class="font-weight-normal"><span class="font-weight-bold" style="font-size: 30px;">5.</span> <c:out value = "${row5.Question}"/> </span> 
                          <div class="row">
    				<div class="col-6" style="text-align: center;">
    					  <div class="custom-control custom-radio" >
  							<input type="radio" class="custom-control-input" id="defaultUnchecked51" value="1" name="defaultExampleRadios5">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked51"><c:out value = "${row5.op1}"/></label>
                          </div>
                          <br><br>
                          <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked53" value="3" name="defaultExampleRadios5">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked53"><c:out value = "${row5.op3}"/></label>
                    </div></div>
    				<div class="col-6" style="text-align: center;">
    					 <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked52" value="2" name="defaultExampleRadios5">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked52"><c:out value = "${row5.op2}"/></label>
                          </div>
                          <br><br>
                          <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked54" value="4" name="defaultExampleRadios5">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked54"><c:out value = "${row5.op4}"/></label>
                          </div>
                     </div>
 				 </div>
 				 </c:forEach>
 				 <br><br>
                        </div>
                        <div class="tab-pane fade animated fadeInUp" id="list-settings6" role="tabpanel" aria-labelledby="list-settings-list6">
                        <sql:query dataSource="${db}"  var="rs6" >select * from adminstrator where id=6;</sql:query>
                         <c:forEach var = "row6" items = "${rs6.rows}" >
                         <span style="font-size: 20px" class="font-weight-normal"><span class="font-weight-bold" style="font-size: 30px;">6.</span><c:out value = "${row6.Question}"/> </span> 
                         <div class="row">
    				<div class="col-6" style="text-align: center;">
    					  <div class="custom-control custom-radio" >
  							<input type="radio" class="custom-control-input" id="defaultUnchecked61" value="1" name="defaultExampleRadios6">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked61"><c:out value = "${row6.op1}"/></label>
                          </div>
                          <br><br>
                          <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked63" value="3" name="defaultExampleRadios6">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked63"><c:out value = "${row6.op3}"/></label>
                    </div></div>
    				<div class="col-6" style="text-align: center;">
    					 <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked62" value="2" name="defaultExampleRadios6">
  							<label style="cursor:pointer"class="custom-control-label" for="defaultUnchecked62"><c:out value = "${row6.op2}"/></label>
                          </div>
                          <br><br>
                          <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked64" value="4" name="defaultExampleRadios6">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked64"><c:out value = "${row6.op4}"/></label>
                          </div>
                     </div>
 				 </div>
 				 </c:forEach>
 				 <br><br>
                        </div>
                        <div class="tab-pane fade animated fadeInUp" id="list-settings7" role="tabpanel" aria-labelledby="list-settings-list7">
                        <sql:query dataSource="${db}"  var="rs7" >select * from adminstrator where id=7;</sql:query>
                         <c:forEach var = "row7" items = "${rs7.rows}" >
                         <span style="font-size: 20px" class="font-weight-normal"><span class="font-weight-bold" style="font-size: 30px;">7.</span><c:out value = "${row7.Question}"/></span> 
                           <div class="row">
    				<div class="col-6" style="text-align: center;">
    					  <div class="custom-control custom-radio" >
  							<input type="radio" class="custom-control-input" id="defaultUnchecked71" value="1" name="defaultExampleRadios7">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked71"><c:out value = "${row7.op1}"/></label>
                          </div>
                          <br><br>
                          <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked73" value="3" name="defaultExampleRadios7">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked73"><c:out value = "${row7.op3}"/></label>
                    </div></div>
    				<div class="col-6" style="text-align: center;">
    					 <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked72" value="2" name="defaultExampleRadios7">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked72"><c:out value = "${row7.op2}"/></label>
                          </div>
                          <br><br>
                          <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked74" value="4" name="defaultExampleRadios7">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked74"><c:out value = "${row7.op4}"/></label>
                          </div>
                     </div>
 				 </div>
 				 </c:forEach>
 				 <br><br>
                        </div>
                        <div class="tab-pane fade animated fadeInUp" id="list-settings8" role="tabpanel" aria-labelledby="list-settings-list8">
                        <sql:query dataSource="${db}"  var="rs8" >select * from adminstrator where id=8;</sql:query>
                        <c:forEach var = "row8" items = "${rs8.rows}" >
                        <span style="font-size: 20px" class="font-weight-normal"><span class="font-weight-bold" style="font-size: 30px;">8.</span><c:out value = "${row8.Question}"/> </span> 
                             <div class="row">
    				<div class="col-6" style="text-align: center;">
    					  <div class="custom-control custom-radio" >
  							<input type="radio" class="custom-control-input" id="defaultUnchecked81" value="1" name="defaultExampleRadios8">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked81"><c:out value = "${row8.op1}"/></label>
                          </div>
                          <br><br>
                          <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked83"  value="3"name="defaultExampleRadios8">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked83"><c:out value = "${row8.op3}"/></label>
                    </div></div>
    				<div class="col-6" style="text-align: center;">
    					 <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked82" value="2" name="defaultExampleRadios8">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked82"><c:out value = "${row8.op2}"/></label>
                          </div>
                          <br><br>
                          <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked84" value="4" name="defaultExampleRadios8">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked84"><c:out value = "${row8.op4}"/></label>
                          </div>
                     </div>
 				 </div>
 				 </c:forEach>
 				 <br><br>
                        </div>
                        <div class="tab-pane fade animated fadeInUp" id="list-settings9" role="tabpanel" aria-labelledby="list-settings-list9">
                        <sql:query dataSource="${db}"  var="rs9" >select * from adminstrator where id=9;</sql:query>
                        <c:forEach var = "row9" items = "${rs9.rows}" >
                           <span style="font-size: 20px" class="font-weight-normal"><span class="font-weight-bold" style="font-size: 30px;">9.</span><c:out value = "${row9.Question}"/> </span>  
                           <div class="row">
    				<div class="col-6" style="text-align: center;">
    					  <div class="custom-control custom-radio" >
  							<input type="radio" class="custom-control-input" id="defaultUnchecked91" value="1" name="defaultExampleRadios9">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked91"><c:out value = "${row9.op1}"/></label>
                          </div>
                          <br><br>
                          <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked93" value="3" name="defaultExampleRadios9">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked93"><c:out value = "${row9.op2}"/></label>
                    </div></div>
    				<div class="col-6" style="text-align: center;">
    					 <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked92" value="2" name="defaultExampleRadios9">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked92"><c:out value = "${row9.op3}"/></label>
                          </div>
                          <br><br>
                          <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked94" value="4" name="defaultExampleRadios9">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked94"><c:out value = "${row9.op4}"/></label>
                          </div>
                     </div>
 				 </div>
 				 </c:forEach>
 				 <br><br>
                        </div>
                        <div class="tab-pane fade animated fadeInUp" id="list-settings10" role="tabpanel" aria-labelledby="list-settings-list10">
                        <sql:query dataSource="${db}"  var="rs10" >select * from adminstrator where id=10;</sql:query>
                        <c:forEach var = "row10" items = "${rs10.rows}" >
                               <span style="font-size: 20px" class="font-weight-normal"><span class="font-weight-bold" style="font-size: 30px;">10.</span><c:out value = "${row10.Question}"/> </span> 
                            <div class="row">
    				<div class="col-6" style="text-align: center;">
    					  <div class="custom-control custom-radio" >
  							<input type="radio" class="custom-control-input" id="defaultUnchecked01" value="1" name="defaultExampleRadios10">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked01"><c:out value = "${row10.op1}"/></label>
                          </div>
                          <br><br>
                          <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked03" value="3" name="defaultExampleRadios10">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked03"><c:out value = "${row10.op3}"/></label>
                    </div></div>
    				<div class="col-6" style="text-align: center;">
    					 <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked02" value="2" name="defaultExampleRadios10">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked02"><c:out value = "${row10.op2}"/></label>
                          </div>
                          <br><br>
                          <div class="custom-control custom-radio">
  							<input type="radio" class="custom-control-input" id="defaultUnchecked04" value="4" name="defaultExampleRadios10">
  							<label style="cursor:pointer" class="custom-control-label" for="defaultUnchecked04"><c:out value = "${row10.op4}"/></label>
                          </div>
                     </div>
 				 </div>
 				 </c:forEach>
 				 <br><br>
 				 <div class="row">
 				 <div class="col-12" style="text-align:center">
 				 <button type="submit" class="btn btn-outline-success btn-rounded waves-effect" style="border-radius:30px">SUBMIT</button>
 				</div>
 				 </div>
                        </div>
                      </div>
                    </div> 
                                    
                  </div>
                   </form>
                  
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