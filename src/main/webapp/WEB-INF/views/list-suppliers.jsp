<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supplier Supplier CottonList</title>
</head>
<body>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
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
				</tr>
			</thead>
			<tbody>
				<c:forEach var="supplier" items="${allsuppliers}">
					<tr>
						<td>${supplier.supplierId}</td>
						<td>${supplier.firstName}</td>
						<td>${supplier.lastName}</td>
						<td>${supplier.door_no}</td>
						<td>${supplier.address_line_1}</td>
						<td>${supplier.address_line_2}</td>
						<td>${supplier.city}</td>
						<td>${supplier.pincode}</td>
						<td>${supplier.phoneNo}</td>
						<td>${supplier.emailId}</td>
						<td>${supplier.bankName}</td>
						<td>${supplier.accountNumber}</td>
						<td>${supplier.ifscCode}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>