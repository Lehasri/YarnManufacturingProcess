<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Invoice Orders List</title>
</head>
<body>
	<div id="table root">
		<table>
		<caption></caption>
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
				<c:forEach var="invoiceorders" items="${allinvoicelist}">
					<tr>
					    <td>${invoiceorders.invoiceNo}</td>
						<td>${invoiceorders.invoiceDate}</td>
						<td>${invoiceorders.orderId}</td>
						<td>${invoiceorders.totalAmount}</td>
						<td>${invoiceorders.paymentMethod}</td>
						<td>${invoiceorders.invoiceStatus}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<table>
		<caption></caption>
			<thead>
				<tr>
					<th>Order Id</th>
					<th>Order Date</th>
					<th>Ordered Customer</th>
					<th>Ordered Quantity</th>
					<th>Rate</th>
					<th>Order Amount</th>
					<th>Receiving Date</th>
					<th>Order Status</th>
					<th>Advance</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="invoiceorders" items="${allorderslist}">
					<tr>
						<td>${invoiceorders.orderId}</td>
						<td>${invoiceorders.orderDate}</td>
						<td>${invoiceorders.orderedCustomer}</td>
						<td>${invoiceorders.orderedQuantity}</td>
						<td>${invoiceorders.rate}</td>
						<td>${invoiceorders.orderAmount}</td>
						<td>${invoiceorders.receivingDate}</td>
						<td>${invoiceorders.orderStatus}</td>
						<td>${invoiceorders.advance}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>