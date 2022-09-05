<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Customer</title>
<style>
<%@include file="/WEB-INF/css/customer-form.css"%>
body {
    background-image:
        url(https://www.kibrispdr.org/data/704/kerajinan-dari-benang-woll-59.jpg);
    background-size: cover; 
    background-repeat:no-repeat; 
    
   }  
</style>

</head>
<body>
	<div class=top style="color: white; text-decoration: none">
		Create Account
	</div>
	<br>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addcustomer">
					<label for="name">Name</label>
						<form:input path="name" class="text-box"
							placeholder="Enter a name"
							title="Name must contain only alphabets"
							pattern="^[a-zA-Z][a-zA-Z\\s]+$" required="true" />
					<label for="doorNo">Door No</label>
						<form:input path="doorNo" class="text-box"
							placeholder="Enter a door no"
							title="Door number must contain only numbers or it should below 3 digits"
							pattern="^[1-9]\d*(?:[ -]?(?:[a-zA-Z]|[1-9]\d*(?:\s*[/-]\s*\d+[a-z]?)?))?$"
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
						<form:input path="city" class="text-box"
							placeholder="Enter a city"
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
						<form:input path="emailId" class="text-box"
							placeholder="Enter a email id" title="Enter a valid id"
							pattern="^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$"
							required="true" />
					<label for="userPassword">User Password</label>
						<form:input path="userPassword" class="text-box"
							placeholder="Enter a password" title="Enter a valid pasword"
							pattern="^(?=.[0-9])(?=.[a-z])(?=.[A-Z])(?=.[@#$%^&-+=()])(?=\\S+$).{8, 20}$"
							required="true" />

				<div class=movecenter>
					<form:button class="but hover">Create</form:button>
				</div>
			</form:form>
			<div style="color:red">${result}</div>
		</div>
	</div>
	<footer>
		<a href="/supplier/mypreviousprofileform" class="previous">&#8249;</a>
	</footer>
</body>
</html>