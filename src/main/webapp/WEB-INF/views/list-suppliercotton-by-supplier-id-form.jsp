<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Supplier By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<%-- <form:form action="" method="get" modelAttribute="fetchSupplierById">
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
				</div> --%>
			<%-- </form:form> --%>
			<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>Supplier Id</th>
					<th>Cotton Id</th>
					<th>Maximum Supply Quantity</th>
					<th>Rate</th>
					<th>Lead Time</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="suppliercotton" items="${allsuppliercottons}">
					<tr>
						<td>${suppliercotton.supplierId}</td>
						<td>${suppliercotton.cottonId}</td>
						<td>${suppliercotton.maximumSupplyQuantity}</td>
						<td>${suppliercotton.rate}</td>
						<td>${suppliercotton.leadTime}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
	</div>
</body>
</html>