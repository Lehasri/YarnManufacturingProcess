<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Supplier Cotton List</title>
</head>
<body>
	<div id="table root">
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
					<th>Cotton Id</th>
					<th>Maximum Supply Quantity</th>
					<th>Rate</th>
					<th>Lead Time</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="suppliercotton" items="${suppliercottonlist}">
					<tr>
						<td>${suppliercotton.supplierId}</td>
						<td>${suppliercotton.firstName}</td>
						<td>${suppliercotton.lastName}</td>
						<td>${suppliercotton.door_no}</td>
						<td>${suppliercotton.address_line_1}</td>
						<td>${suppliercotton.address_line_2}</td>
						<td>${suppliercotton.city}</td>
						<td>${suppliercotton.pincode}</td>
						<td>${suppliercotton.phoneNo}</td>
						<td>${suppliercotton.emailId}</td>
						<td>${suppliercotton.bankName}</td>
						<td>${suppliercotton.accountNumber}</td>
						<td>${suppliercotton.ifscCode}</td>
						<td>${suppliercotton.cottonId}</td>
						<td>${suppliercotton.maximumSupplyQuantity}</td>
						<td>${suppliercotton.rate}</td>
						<td>${suppliercotton.leadTime}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>