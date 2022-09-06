<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Customer</title>
<style><%@include file="/WEB-INF/css/customer-form.css"%>
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
		Edit Account<a href="/customer/customerindex"><em class="fa fa-home"
		style="font-size: 30px; color: white;float:right"></em></a>
	</div>
	<br>
	<div id="root">
		<div id="form">
			<form:form action="update" method="post"
				modelAttribute="updatecustomer">
				<label for="customerId">Customer Id</label>
				<form:input path="customerId" readonly="true" />
				<label for="name">Name</label>
				<form:input path="name" readonly="true" />
				<label for="doorNo">Door No</label>
				<form:input path="doorNo" class="text-box"
					placeholder="Enter a door no"
					title="Door number must contain only numbers or it should below 3 digits"
					pattern="^[1-9]\d*(?:[ -]?(?:[a-zA-Z]+|[1-9]\d*))?$"
					required="true" />
				<label for="addressLine1">Address Line 1</label>
				<form:input path="addressLine1" class="text-box"
					placeholder="Enter a address"
					title="Address must contain only alphabets"
					pattern="^(?=.[0-9])(?=.[a-z])(?=.[A-Z])(?=.[@#$%^&-+=()])(?=\\S+$).{8, 20}$" required="true" />
				<label for="addressLine2">Address Line 2</label>
				<form:input path="addressLine2" class="text-box"
					placeholder="Enter a address"
					title="Address must contain only alphabets"
					pattern="^(?=.[0-9])(?=.[a-z])(?=.[A-Z])(?=.[@#$%^&-+=()])(?=\\S+$).{8, 20}$" />
				<label for="city">City</label>
				<form:input path="city" class="text-box" placeholder="Enter a city"
					title="City must contain only alphabets"
					pattern="^[a-zA-Z][a-zA-Z\\s]+$" required="true" />
				<label for="pincode">Pincode</label>
				<form:input path="pincode" class="text-box"
					placeholder="Enter a pincode"
					title="Pincode must contain only numbers or it should be exactly 6 digits"
					pattern="^[1-9][0-9]{5}$" required="true" />
				<label for="phoneNo">phone No</label>
				<form:input path="phoneNo" class="text-box"
					placeholder="Enter a phone no"
					title="Phone no must contain only numbers or exactly 10 digits"
					pattern="^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$"
					required="true" />
				<label for="emailId">Email Id</label>
				<form:input path="emailId" readonly="true" />
				<form:input path="userPassword" type="hidden" readonly="true" />
				<div class=movecenter>
					<form:button class="but hover">Update</form:button>
				</div>
			</form:form>
			<div style="color: red">${result}</div>
		</div>
	</div>
	<footer>
		<a href="/customer/myprofile" class="previous background">&#8249;</a>
	</footer>
</body>
</html>