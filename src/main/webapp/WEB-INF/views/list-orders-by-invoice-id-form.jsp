<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Invoice By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="get" modelAttribute="invoicedetail">
				<div>
					<label for="invoiceNo">Invoice No</label>
					<div>
						<form:input path="invoiceNo" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="invoiceDate">Invoice Date</label>
					<div>
						<form:input path="invoiceDate" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="orderId">Order Id</label>
					<div>
						<form:input path="orderId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="totalAmount">Total Amount</label>
					<div>
						<form:input path="totalAmount" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="paymentMethod">Payment Method</label>
					<div>
						<form:input path="paymentMethod" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="invoiceStatus">Invoice Status</label>
					<div>
						<form:input path="invoiceStatus" readonly="true"/>
					</div>
				</div>
			</form:form>
			<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
				    <th>Yarn Id</th>
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
				<c:forEach var="orders" items="${orderdetail}">
					<tr>
					    <td>${orders.yarnId}</td>
						<td>${orders.orderId}</td>
						<td>${orders.orderDate}</td>
						<td>${orders.orderedCustomer}</td>
						<td>${orders.orderedQuantity}</td>
						<td>${orders.rate}</td>
						<td>${orders.orderAmount}</td>
						<td>${orders.receivingDate}</td>
						<td>${orders.orderStatus}</td>
						<td>${orders.advance}</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
		</div>
	</div>
</body>
</html>