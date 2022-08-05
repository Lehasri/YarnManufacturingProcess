<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Invoice List</title>
</head>
<body>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>Invoice No</th>
					<th>Invoice Date</th>
					<th>Order Id</th>
					<th>Total Amount</th>
					<th>Payment Method</th>
					<th>Invoice Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="invoice" items="${allinvoices}">
					<tr>
						<td>${invoice.invoiceNo}</td>
						<td>${invoice.invoiceDate}</td>
						<td>${invoice.orderId}</td>
						<td>${invoice.totalAmount}</td>
						<td>${invoice.paymentMethod}</td>
						<td>${invoice.invoiceStatus}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>