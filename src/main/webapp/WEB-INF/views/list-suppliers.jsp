<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supplier List</title>
</head>
<body>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>Supplier Id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Address</th>
					<th>Phone No</th>
					<th>Email Id</th>
					<th>Bank Details</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="supplier" items="${allsuppliers}">
					<tr>
						<td>${supplier.supplierId}</td>
						<td>${supplier.firstName}</td>
						<td>${supplier.lastName}</td>
						<td>${supplier.address}</td>
						<td>${supplier.phoneNo}</td>
						<td>${supplier.emailId}</td>
						<td>${supplier.bankDetails}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>