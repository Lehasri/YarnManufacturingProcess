<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Customer</title>
<style>
* {
	font-family: cursive;
}

#root {
	line-height: 30px;
	width: 20%;
	margin: auto;
	margin-top: 147px;
	background-color: lightgrey;
	Height: 574px;
	width: 414px;
	outline-color: black;
	outline-style: dashed;
	padding: 75px;
	font-family: Century Gothic ";
	padding-left: 180;
	text-align: center;
}

.movecenter {
	margin-left: 77px;
}

.background:hover {
	background-color: lightgrey;
	color: black;
}

.previous {
	background-color: black;
	color: white;
	border-radius: 50%;
	float: left;
	/* margin-left:-30px
	margin-top: -47px; */
	text-decoration: none;
	padding: 5px 16px;
}

.top {
	background-color: black;
	width: 1278px;
	border: 1px lightgrey;
	font-family: Century Gothic;
	padding: 26px;
	font-family: cursive;
	font-size: 20px;
	text-decoration: none;
	float: right;
	margin-top: 4px
}
</style>

</head>
<body>
	<div class=top style="color: white; text-decoration: none">
		<b>Create Account</b>
	</div>
	<br>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addcustomer">
				<div>
					<label for="name">Name</label>
					<div>
						<form:input path="name" class="text-box"
							placeholder="Enter a name"
							title="Name must contain only alphabets"
							pattern="^[a-zA-Z][a-zA-Z\\s]+$" required="true" />
					</div>
				</div>
				<div>
					<label for="doorNo">Door No</label>
					<div>
						<form:input path="doorNo" class="text-box"
							placeholder="Enter a door no"
							title="Door number must contain only numbers or it should below 3 digits"
							pattern="^[1-9]\d*(?:[ -]?(?:[a-zA-Z]+|[1-9]\d*))?$"
							required="true" />
					</div>
				</div>
				<div>
					<label for="addressLine1">Address Line 1</label>
					<div>
						<form:input path="addressLine1" class="text-box"
							placeholder="Enter a address"
							title="Address must contain only alphabets"
							pattern="^[a-zA-Z][a-zA-Z\\s]+$" required="true" />
					</div>
				</div>
				<div>
					<label for="addressLine2">Address Line 2</label>
					<div>
						<form:input path="addressLine1" class="text-box"
							placeholder="Enter a address"
							title="Address must contain only alphabets"
							pattern="^[a-zA-Z][a-zA-Z\\s]+$" />
					</div>
				</div>
				<div>
					<label for="city">City</label>
					<div>
						<form:input path="city" class="text-box"
							placeholder="Enter a city"
							title="City must contain only alphabets"
							pattern="^[a-zA-Z][a-zA-Z\\s]+$" required="true" />
					</div>
				</div>
				<div>
					<label for="pincode">Pincode</label>
					<div>
						<form:input path="pincode" class="text-box"
							placeholder="Enter a pincode"
							title="Pincode must contain only numbers or it should be exactly 6 digits"
							pattern="^[1-9][0-9]{5}$" required="true" />
					</div>
				</div>
				<div>
					<label for="phoneNo">phone No</label>
					<div>
						<form:input path="phoneNo" class="text-box"
							placeholder="Enter a phone no"
							title="Phone no must contain only numbers or exactly 10 digits"
							pattern="^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$"
							required="true" />
					</div>
				</div>
				<div>
					<label for="emailId">Email Id</label>
					<div>
						<form:input path="emailId" class="text-box"
							placeholder="Enter a email id" title="Enter a valid id"
							pattern="^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$"
							required="true" />
					</div>
				</div>
				<div>
					<label for="userPassword">User Password</label>
					<div>
						<form:input path="userPassword" class="text-box"
							placeholder="Enter a password" title="Enter a valid pasword"
							pattern="^(?=.[0-9])(?=.[a-z])(?=.[A-Z])(?=.[@#$%^&-+=()])(?=\\S+$).{8, 20}$"
							required="true" />
					</div>
				</div>

				<div>
					<form:button>Add</form:button>
				</div>
			</form:form>
		</div>
	</div>
	<footer>
		<a href="/supplier/mypreviousprofileform" class="previous">&#8249;</a>
	</footer>
</body>
</html>