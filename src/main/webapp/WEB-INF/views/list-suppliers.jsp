<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Supplier List</title>
<style>
<%@include file="/WEB-INF/css/listyarn.css"%>
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class=top >
		<div>Suppliers List</div>
		<div><a href="/yarn/yarnindex"><em class="fa fa-home"
		style="font-size: 30px;float:right; color: white;"></em></a></div>
	</div>
	<br>
	<div id="table-root">
	<table>
	<caption></caption>
			<thead>
				<tr>
					<th>Supplier Id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Door No</th>
					<th>Address Line 1</th>
					<th>Address Line 2</th>
					<th>City</th>
					<th>Pincode</th>
					<th>Phone No</th>
					<th>Email Id</th>
					<th>Bank Name</th>
					<th>Account Number</th>
					<th>IFSC Code</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="supplier" items="${allsuppliers}">
					<tr>
						<td>${supplier.supplierId}</td>
						<td>${supplier.firstName}</td>
						<td>${supplier.lastName}</td>
						<td>${supplier.doorNo}</td>
						<td>${supplier.addressLine1}</td>
						<td>${supplier.addressLine2}</td>
						<td>${supplier.city}</td>
						<td>${supplier.pincode}</td>
						<td>${supplier.phoneNo}</td>
						<td>${supplier.emailId}</td>
						<td>${supplier.bankName}</td>
						<td>${supplier.accountNumber}</td>
						<td>${supplier.ifscCode}</td>
						<td><a class=text
							href="deletesupplier?id=${supplier.supplierId}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>