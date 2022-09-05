<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Supplier By Id</title>
<style type="text/css">
* {
	font-family: cursive;
}

#root {
	line-height: 30px;
	width: 20%;
	margin: auto;
	margin-top: 147px;
	background-color: lightgrey;
	Height: 453px;
	width: 1280px;
	outline-color: black;
	outline-style: dashed;
	padding: 22px;
	font-family: Century Gothic ";
	padding-left: 180;
	text-align: center;
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

.grid-container {
	display: grid;
	grid-template-columns: auto auto auto;
	grid-gap: 20px;
	background-color: lightgrey;
	padding: 10px;
}

.hover:hover {
	background-color: lightgrey;
	color: black;
}

.but {
	background-color: black;
	color: white;
	margin-left: 1px;
	width: 70px;
	height: 30px;
	margin-top: 50px;
}
.float{
float:right;
}
</style>
</head>
<body>
	<div class=top style="color: white; text-decoration: none">
	View Account</div>
	<br>
	<div id="root">
		<div id="form">
			<form:form action="" method="get" modelAttribute="findsupplierbyid">
<div class="grid-container">
				<div>
					<div>
						<label for="firstName">First Name</label>
						<div>
							<form:input path="firstName" readonly="true" />
						</div>
					</div>
					<div>
						<label for="lastName">Last Name</label>
						<div>
							<form:input path="lastName" readonly="true" />
						</div>
					</div>

					<div>
						<label for="phoneNo">phone No</label>
						<div>
							<form:input path="phoneNo" readonly="true" />
						</div>
					</div>
					<div>
						<label for="emailId">Email Id</label>
						<div>
							<form:input path="emailId" readonly="true"  />
						</div>
					</div>
					<div>
						<label for="userPassword">User Password</label>
						<div>
							<form:input path="userPassword" class="text-box"
								placeholder="Enter a passwor" readonly="true" />
						</div>
					</div>
				</div>
				<div>
				<div>
						<label>Address Details :</label>
					</div>
					<div>
						<label for="doorNo">Door No</label>
						<div>
							<form:input path="doorNo" readonly="true" />
						</div>
					</div>
					<div>
						<label for="addressLine1">Address Line 1</label>
						<div>
							<form:input path="addressLine1" readonly="true"  />
						</div>
					</div>
					<div>
						<label for="addressLine2">Address Line 2</label>
						<div>
							<form:input path="addressLine1" readonly="true" />
						</div>
					</div>
					<div>
						<label for="city">City</label>
						<div>
							<form:input path="city" readonly="true" />
						</div>
					</div>
					<div>
						<label for="pincode">Pincode</label>
						<div>
							<form:input path="pincode" readonly="true" />
						</div>
					</div>
				</div>
				<div>
					<div>
						<label>Bank Details :</label>
					</div>
					<div>
						<label for="bankName">Bank Name</label>
						<div>
							<form:input path="bankName" readonly="true" />
						</div>
					</div>

					<div>
						<label for="accountNumber">Account Number</label>
						<div>
							<form:input path="accountNumber" readonly="true" />
						</div>
					</div>
					<div>
						<label for="ifscCode">IFSC Code</label>
						<div>
							<form:input path="ifscCode" readonly="true" />
						</div>
					</div>

				</div>
		</div>
		</form:form>
	</div>
	</div>
	<br>
	<footer>
		<a href="/supplier/mypreviousprofileform" class="background previous">&#8249;</a>
	</footer>
</body>
</html>