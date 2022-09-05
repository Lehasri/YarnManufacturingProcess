<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Customer By Id</title>
<style>
<%@include file="/WEB-INF/css/view-customer-form.css"%>
body {
    background-image:
        url(https://www.kibrispdr.org/data/704/kerajinan-dari-benang-woll-59.jpg);
    background-size: cover; 
    background-repeat:no-repeat; 
    
   }  
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class=top style="color: white; text-decoration: none">
		View Account<a href="/customer/customerindex"><em class="fa fa-home"
		style="font-size: 30px; color: white;float:right"></em></a>
	</div>
	<br>
	<div id="root">
		<div id="form">
			<form:form action="" method="get" modelAttribute="findcustomerbyid">
					<label for="name">Name</label>
						<form:input path="name" readonly="true" />
					<label for="doorNo">Door No</label>
						<form:input path="doorNo" readonly="true" />
					<label for="addressLine1">Address Line 1</label>
						<form:input path="addressLine1" readonly="true" />
					<label for="addressLine2">Address Line 2</label>
						<form:input path="addressLine1" readonly="true" />
					<label for="city">City</label>
						<form:input path="city" readonly="true" />
					<label for="pincode">Pincode</label>
						<form:input path="pincode" readonly="true" />
					<label for="phoneNo">Phone No</label>
						<form:input path="phoneNo" readonly="true" />
					<label for="emailId">Email Id</label>
						<form:input path="emailId" readonly="true" />
			</form:form>
		</div>
	</div>
	<footer>
		<a href="/customer/myprofile" class="previous background">&#8249;</a>
	</footer>
</body>
</html>