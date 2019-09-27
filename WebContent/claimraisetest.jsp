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
				<h3>${errormsg1}</h3>
					<h2>Health Insurance Raise Claim Form</h2>
					
					<div class="form-row">
			<hr>
<b> Member's Information </b>
<br>
<br>
<form action="RaiseClaimServlet" method="post" enctype="multipart/form-data">
<table>
<tr> <td> First Name <input type="text" name="fname" value="<c:out value='${sessionScope.memberObj.getFname()}'></c:out>"/> </td> 
<td> Last Name <input type="text" name="lname" value="<c:out value='${sessionScope.memberObj.getLname()}'></c:out>"/></td>
</tr>
<tr> <td></td></tr>
<tr> <td></td></tr>
<tr> <td></td></tr>
<tr> <td> MemberId <input type="text" name="member_id" value="<c:out value='${sessionScope.memberObj.getMemberid()}'> </c:out>" /> </td></tr>
<tr> <td></td></tr>
<tr> <td></td></tr><tr> <td></td></tr><tr> <td></td></tr>
<tr>
<td>
Gender 
 <select name="gender">
<option  value="Male" <c:if test="${sessionScope.memberObj.getGender()=='male'}">selected</c:if>>Male</option>
<option value="Female" <c:if test="${sessionScope.memberObj.getGender()=='female'}">selected</c:if>>Female</option>
</select>
</td>
</tr>
<tr> <td></td></tr><tr> <td></td></tr><tr> <td></td></tr>
<tr> <td> Age <input type="text" name="age" value="<c:out value='${sessionScope.memberObj.getAge()}'></c:out>"/></td> <tr>
<tr> <td></td></tr><tr> <td></td></tr><tr> <td></td></tr>
<tr> <td> DOB <input type ="date" name="dob" required></td></tr>
<tr> <td></td></tr><tr> <td></td></tr><tr> <td></td></tr>
<tr><td>Contact Number <input type="text" name="contact_no" value="<c:out value='${sessionScope.memberObj.getContactnumber()}'></c:out>"/></td></tr>
<tr> <td></td></tr><tr> <td></td></tr><tr> <td></td></tr>
<tr> <td> Upload Adhaar Card <input type="file" name="file1" required></td></tr>
<tr> <td></td></tr><tr> <td></td></tr><tr> <td></td></tr>
</table>
<hr>
<b>Accident Details</b>
<br>
<br>
<table>
<tr> <td> Work Accident <input type="checkbox" name="work_acc" value="Yes"> Yes
<input type="checkbox" name="work_acc" value="No"> No </td>
<td> </td>
<td>  </td> <td> </td> <td></td>
<td> Auto Accident <input type="checkbox" name="auto_acc" value="Yes"> Yes
<input type="checkbox" name="auto_acc" value="No"> No </td>
<td> </td>
<td>  </td> <td> </td> <td></td>
 <td> Date Of Accident <input type="date" name="doA" required/> </td>
</tr>
</table>
<hr>
<b>Claim Id</b>  &nbsp &nbsp<input type="text" name="claimid" required>
<br><br> <br>
<b> Amount to be Claimed </b><input type="number" name="amount" required>
<hr>
<b> Mandatory Documents </b>
<br><br> Hospital Discharged Bills <input type="file" name="file2" required>
<br><br>
<hr>
Remarks
<br> <textarea name="text1" cols="40" rows="5"></textarea>
<hr>
<input type="submit" value="Submit" name="Submit"></input>
</form>
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