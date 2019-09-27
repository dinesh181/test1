<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/admin.css">
</head>
<body>
<div>
<header  id="p1">
<br>

<h2 id="a1">Claims Management System</h2>
<a style="float:right" href="RegistrationRequest" id="a2">Pending Request</a>
<a style="float:right" href="ShowMenuItemListAdmin" id="a2">Menu</a></p>

</header>
<h3><b>Admin Login</b></h3>
<table id="t1">
<tr>
  <th>Name</th>
  <th>Age</th>
  <th>Gender</th>
  <th>Contact Number</th>
  <th>Member Id</th>
  <th>Email</th>
  <th>Accept Approval</th>
  <th>Reject Approval</th>
  
</tr>
<c:forEach items="${memberListobj}" var="list" >
<tr>
  <td id="t11">${list.fname}</td>
  <td id="t12">${list.age}</td>
  <td id="t12">${list.gender}</td>
  <td id="t12">${list.contactnumber}</td>
  <td id="t12">${list.memberid}</td>
  <td id="t12">${list.email}</td>
  <td id="t17"><a href="AcceptRegistrationRequest?id=${list.memberid}">Accept</a></td>
    <td id="t17"><a href="RejectRegistrationRequest?id=${list.memberid}">Reject</a></td>
  
</tr>
</c:forEach>
</table>
</div>
</body>
</html>