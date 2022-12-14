<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Order By Id</title>
<style type="text/css">
<%@include file="/WEB-INF/css/update-order-form.css"%>
body {
    background-image:
        url(https://www.kibrispdr.org/data/704/kerajinan-dari-benang-woll-59.jpg);
    background-size: cover; 
    background-repeat:no-repeat; 
    
   }  
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class=top style="color: white; text-decoration: none">
		View Order<a href="/yarn/mypreviousyarnindex"><em class="fa fa-home"
		style="font-size: 30px; color: white;float:right"></em></a>
	</div>
	<br>
	<div id="root">
		<div id="form">
			<form:form action="" method="get" modelAttribute="findorderbyid">
					<label for="yarnId">Yarn Id</label>
						<form:input path="yarnId" readonly="true" />
					<label for="customerId">Customer Id</label>
						<form:input path="customerId" readonly="true" />
					<label for="orderId">Order Id</label>
						<form:input path="orderId" readonly="true" />
					<label for="orderDate">Order Date</label>
						<form:input path="orderDate" readonly="true" />
					<label for="name">Ordered Customer</label>
						<form:input path="name" readonly="true" />
						<label for="orderedQuantity">Ordered Quantity</label>
						<form:input path="orderedQuantity" readonly="true" />
					<label for="rate">Rate</label>
						<form:input path="rate" readonly="true" />
					<label for="orderAmount">Order Amount</label>
						<form:input path="orderAmount" readonly="true" />
					<label for="receivingDate">Receiving Date</label>
				   	<form:input path="receivingDate" readonly="true" />
					<label for="orderStatus">Order Status</label>
					     <form:input path="orderStatus" readonly="true" />
					<label for="advance">Advance</label>
						<form:input path="advance" readonly="true" />
			</form:form>
		</div>
	</div>
	<footer>
		<a href="/orders/orderlist" class="background previous">&#8249;</a>
	</footer>
</body>
</html>