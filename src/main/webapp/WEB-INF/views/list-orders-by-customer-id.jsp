<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Orders List</title>
<style>
<%@include file="/WEB-INF/css/listyarn.css"%>
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
						<td>${orders.name}</td>
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