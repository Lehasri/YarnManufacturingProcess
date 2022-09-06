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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div style="width:1364px"class=top >
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
					<th>Edit/View</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="orders" items="${allorders}">
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
						<td><a class=text
							href="/invoice/getordersinvoice?id=${orders.orderId}"><button
									type="button" class="btn btn-primary">Invoice</button></a></td>
						<c:set var="orderStatus" scope="session" value="${orders.orderStatus}" />
						<c:choose>
							<c:when test="${orderStatus =='Delivered'}">
								<td><a class=text href="findorderbyid?id=${orders.orderId}"><button
											type="button" class="btn btn-dark">View</button></a></td>
							</c:when>
							<c:otherwise>
								<td><a class=text href="updateform?id=${orders.orderId}"><button
											type="button" class="btn btn-dark">Edit</button></a></td>
							</c:otherwise>
						</c:choose>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>