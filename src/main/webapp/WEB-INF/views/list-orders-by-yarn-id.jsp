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
 body {
    background-image:
        url(https://st.depositphotos.com/10614052/54679/i/450/depositphotos_546796424-stock-photo-thread-spools-light-background.jpg);
    background-size: cover; 
    background-repeat:no-repeat; 
    
   }  
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class=top >
		<div>Orders List</div>
		<div><a href="/yarn/mypreviousyarnindex"><em class="fa fa-home"
		style="font-size: 30px;float:right; color: white;"></em></a></div>
	</div>
	<br>
	<div id="table root">
		<table>
		<caption></caption>
			<thead>
				<tr>
					<th>Yarn Id</th>
					<th>Customer Id</th>
					<th>Order Id</th>
					<th>Order Date</th>
					<th>Ordered Customer</th>
					<th>Ordered Quantity</th>
					<th>Rate</th>
					<th>Order Amount</th>
					<th>Receiving Date</th>
					<th>Order Status</th>
					<th>Advance</th>
					<th>Invoice</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="orders" items="${allOrdersbyyarnid}">
					<tr>
						<td>${orders.yarnId}</td>
						<td>${orders.customerId}</td>
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
						<td><a class=text href="updateform?id=${orders.orderId}">Edit</a></td>
						<td><a class=text href="deleteorder?id=${orders.orderId}"onclick="return confirm('Are you sure you want to delete order ${orders.orderId} ?');">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<footer>
		<a href="/yarnstock/yarnlist" class="background previous">&#8249;</a>
	</footer>
</body>
</html>