<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Orders Invoice</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getorderinvoice">
				<div>
					<label for="customerId">Customer Id</label>
					<div>
						<form:input path="customerId" />
					</div>
				</div>
				<div>
					<label for="orderId">Order Id</label>
					<div>
						<form:input path="orderId" />
					</div>
				</div>
				<div>
					<label for="orderDate">Order Date</label>
					<div>
						<form:input path="orderDate" />
					</div>
				</div>
				<div>
					<label for="orderedCustomer">Ordered Customer</label>
					<div>
						<form:input path="orderedCustomer" />
					</div>
				</div>
				<div>
					<label for="orderedQuantity">Ordered Quantity</label>
					<div>
						<form:input path="orderedQuantity" />
					</div>
				</div>
				<div>
					<label for="rate">Rate</label>
					<div>
						<form:input path="rate" />
					</div>
				</div>
				<div>
					<label for="orderAmount">Order Amount</label>
					<div>
						<form:input path="orderAmount" />
					</div>
				</div>
				<div>
					<label for="receivingDate">Receiving Date</label>
					<div>
						<form:input path="receivingDate" />
					</div>
				</div>
				<div>
					<label for="orderStatus">Order Status</label>
					<div>
						<form:input path="orderStatus" />
					</div>
				</div>
				<div>
					<label for="advance">Advance</label>
					<div>
						<form:input path="advance" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<div id="invoice list">
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