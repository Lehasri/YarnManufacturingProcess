<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supplier Cotton List</title>
</head>
<body>
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
</body>
</html>