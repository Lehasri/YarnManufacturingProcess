<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Supplier</title>
<style type="text/css">
<%@include file="/WEB-INF/css/supplier-form.css"%>
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class=top style="color: white; text-decoration: none">
		Edit Account<a href="/supplier/cottonindex"><em class="fa fa-home"
		style="font-size: 30px; color: white;"></em></a>
	</div>
	<br> 
	<div id="root">
		<div id="form">
			<form:form action="update" method="post" modelAttribute="updatesupplierA">

				<div class="grid-container">
				<div>
					<div>
						<label for="firstName">First Name</label>
						<div>
							<form:input path="firstName" class="text-box"
								placeholder="Enter a first name"
								title="First name must contain only alphabets"
								pattern="^[a-zA-Z][a-zA-Z\\s]+$" required="true" />
						</div>
					</div>
					<div>
						<label for="lastName">Last Name</label>
						<div>
							<form:input path="lastName" class="text-box"
								placeholder="Enter a last name"
								title="last name must contain only alphabets"
								pattern="^[a-zA-Z]+$" />
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
				</div>
				<div>
				<div>
						<label>Address Details :</label>
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
				</div>
				<div>
					<div>
						<label>Bank Details :</label>
					</div>
					<div>
						<label for="bankName">Bank Name</label>
						<div>
							<form:input path="bankName" class="text-box"
								placeholder="Enter a bank name"
								title="Bank Name must contain only alphabets"
								pattern="^[a-zA-Z][a-zA-Z\\s]+$" required="true" />
						</div>
					</div>

					<div>
						<label for="accountNumber">Account Number</label>
						<div>
							<form:input path="accountNumber" class="text-box"
								placeholder="Enter a account number"
								title="Account Number must contain only numbers or it should above 9"
								pattern="^\d{9,18}$" required="true" />
						</div>
					</div>
					<div>
						<label for="ifscCode">IFSC Code</label>
						<div>
							<form:input path="ifscCode" class="text-box"
								placeholder="Enter a ifsc code" title="Enter a valid IFSC code"
								pattern="^[A-Z]{4}0[A-Z0-9]{6}$" required="true" />
						</div>
					</div>

				</div>
		</div>

		<div>
			<form:button class="but hover">Update</form:button>
		</div>
		<div>${result}</div>
		</form:form>
	</div>
	</div>
	<br>
	<footer>
		<a href="/supplier/mypreviousprofileform" class="background previous">&#8249;</a>
	</footer>
</body>
</html>