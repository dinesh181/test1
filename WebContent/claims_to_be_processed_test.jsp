<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>pending_approval</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- Font-->
	<link rel="stylesheet" type="text/css" href="css/montserrat-font.css">
	<link rel="stylesheet" type="text/css" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
	<!-- Main Style Css -->
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/admint.css"/>
    <link rel="stylesheet" href="css/homep.css">
</head>
<div class="w3-top">
  <div class="w3-bar w3-white w3-card" id="myNavbar">
    <a href="#home" class="w3-bar-item w3-button w3-wide">CLAIMS MANAGEMENT SYSTEM</a>
        <div class="w3-right w3-hide-small">
      <a href="#about" class="w3-bar-item w3-button">Home</a>
     

      <a href="#contact" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i>Logout</a>
    </div>
<body class="form-v10">
	
<div class="page-content">
	
		<div class="form-v10-content">
			<form class="form-detail" action="AdminRegistration" method="post" id="myform">
				<div class="form-left">
					<h2>List Of Claims</h2>
					
					<div class="form-row">
			<table id="t1">
<tr>
  <th>Member Id</th>
  <th></th>
  <th></th>
  <th>Claim Id</th>
  <th></th>
  <th></th>
  <th>Open Claim</th>
 
  
</tr>
<c:forEach items="${claimListObj}" var="list" >
<tr>
  <td id="t11">${list.claimid}</td>
   <th></th>
  <th></th>
  <th></th>
  <th></th>
  <td id="t12">${list.memid}</td>
   <th></th>
  <th></th>
  <th></th>
  <th></th>
<td id="t17"><a href="ShowEachClaim?id=${list.claimid}">View</a></td> 
  
</tr>
</c:forEach>
</table>
					</div>
					<div class="form-row">
					<br>
					</div>
					<div class="form-row">
					<br>
					</div>
					<div class="form-row">
					<br>
					</div>
					<div class="form-row">
					<br>
					</div>
					<div class="form-row">
					<br>
					</div>
					
					
					<div class="form-row form-row-2">
					
					</div>
				</div>
				</div>
</body>
</html>