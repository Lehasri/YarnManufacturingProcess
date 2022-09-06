<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Orders List</title>
<link rel = "stylesheet"
         href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src = "https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<style>
<%@include file="/WEB-INF/css/listyarn.css"%>
 body {
    background-image:
        url(https://st.depositphotos.com/10614052/54679/i/450/depositphotos_546796424-stock-photo-thread-spools-light-background.jpg);
    background-size: cover; 
    background-repeat:no-repeat; 
    
   }  
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class=top style="color:white; width:1364px; text-decoration: none">
	Order List<a href="/customer/customerindex"><em class="fa fa-home"
		style="font-size: 30px; color: white;float:right"></em></a>
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
						<td><a class=text href="/invoice/getcustomerordersinvoice?id=${orders.orderId}"><button type="button" class="btn btn-primary">Invoice</button></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>