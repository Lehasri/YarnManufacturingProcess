<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Supplier By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="get" modelAttribute="findsupplierbyid">
				<p>
				<div>
					<label>Supplier Details :</label>
				</div>
				</p>
				<div>
					<label for="supplierId">Supplier Id</label>
					<div>
						<form:input path="supplierId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="firstName">First Name</label>
					<div>
						<form:input path="firstName" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="lastName">Last Name</label>
					<div>
						<form:input path="lastName" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="phoneNo">phone No</label>
					<div>
						<form:input path="phoneNo" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="emailId">Email Id</label>
					<div>
						<form:input path="emailId" readonly="true"/>
					</div>
				</div>
				<p>
				<div>
					<label>Bank Details :</label>
				</div>
				</p>
				<div>
					<label for="bankName">Bank Name</label>
					<div>
						<form:input path="bankName" />
					</div>
				</div>
				<div>
					<label for="accountNumber">Account Number</label>
					<div>
						<form:input path="accountNumber" />
					</div>
				</div>
				<div>
					<label for="ifscCode">IFSC Code</label>
					<div>
						<form:input path="ifscCode" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>