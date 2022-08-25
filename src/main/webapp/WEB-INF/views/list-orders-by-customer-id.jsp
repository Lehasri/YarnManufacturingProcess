<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Orders List</title>
<style>
table {
	border-collapse: collapse;
	width: 100%;
	margin-top: 150px;
}


th {
	text-align: left;
	padding: 8px;
	color: white;
	background: black;
}

tr:nth-child(even) {
	background-color: lightgrey;
}

.center {
	margin-top: 17%;
}

.text {
	text-decoration: none;
	color: black;
}

.background:hover {
	background-color: lightgrey;
	color: black;
}

.previous {
	background-color: black;
	color: white;
	border-radius: 50%;
	float: left;
	margin-top: 198px;
	float: left;
	text-decoration: none;
	padding: 5px 16px;
}

.top {
	background-color: black;
	width: 1297px;
	border: 1px lightgrey;
	font-family: Century Gothic;
	padding: 26px;
	font-family: cursive;
	font-size: 20px;
	text-decoration: none;
	float: right;
	margin-top: 3px
}
</style>
</head>
<body>
	<div class=top style="color: white; text-decoration: none">
	Order List
	</div>
	<br>
	<div id="table root">
		<table>
		<caption></caption>
			<thead>
				<tr>
					
					<th>Order Id</th>
					<th>Order Date</th>
					<th>Name</th>
					<th>Ordered Quantity</th>
					<th>Rate</th>
					<th>Order Amount</th>
					<th>Receiving Date</th>
					<th>Order Status</th>
					<th>Advance</th>
					<th>Invoice</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="orders" items="${allOrders}">
					<tr>
						
						<td>${orders.orderId}</td>
						<td>${orders.orderDate}</td>
						<td>${orders.orderedCustomer}</td>
						<td>${orders.orderedQuantity}</td>
						<td>${orders.rate}</td>
						<td>${orders.orderAmount}</td>
						<td>${orders.receivingDate}</td>
						<td>${orders.orderStatus}</td>
						<td>${orders.advance}</td>
						<td><a class=text href="/invoice/getordersinvoice?id=${orders.orderId}">Invoice</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>